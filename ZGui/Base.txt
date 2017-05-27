struct ElementEvent ui // same fields as in UiEvent, but not readonly
{
	// 
	int Type; // UiEvent.EGuiEvent
	//
	String KeyString;
	int KeyChar;
	//
	int MouseX;
	int MouseY;
	
	void FromUiEvent(UiEvent ev)
	{
		Type = ev.Type;
		KeyString = ev.KeyString;
		KeyChar = ev.KeyChar;
		MouseX = ev.MouseX;
		MouseY = ev.MouseY;
	}
}

class Element ui
{
	//
	Element mParent;
	Array<Element> mChildren;
	
	void AddChild(Element other)
	{
		other.mParent = self;
		if (mChildren.Find(other)==mChildren.Size())
			mChildren.Push(other);
	}
	
	// geometry data.
	Rect mRect;
	double mScale;
	
	// this is used by root element when receiving mouse events through Input
	private double mMouseX;
	private double mMouseY;
	
	Element Init()
	{
		mRect = Rect.FromXYWH(0, 0, 0, 0);
		mScale = 1;
		mMouseX = 0;
		mMouseY = 0;
		OnCreate();
		return self;
	}
	
	// system stuff
	bool OnProcessInput(InputEvent ev)
	{
		if (mParent) return false;
	
		// convert event.
		ElementEvent uiev;
		uiev.MouseX = mMouseX;
		uiev.MouseY = mMouseY;
		
		if (ev.Type == InputEvent.Type_KeyDown)
		{
			switch (ev.KeyScan)
			{
			case InputEvent.Key_Mouse1:
				uiev.Type = UiEvent.Type_LButtonDown;
				return OnProcess(uiev);
				
			case InputEvent.Key_Mouse2:
				uiev.Type = UiEvent.Type_RButtonDown;
				return OnProcess(uiev);
				
			case InputEvent.Key_Mouse3:
				uiev.Type = UiEvent.Type_MButtonDown;
				return OnProcess(uiev);
				
			case InputEvent.Key_MWheelUp:
				uiev.Type = UiEvent.Type_WheelUp;
				return OnProcess(uiev);
				
			case InputEvent.Key_MWheelDown:
				uiev.Type = UiEvent.Type_WheelDown;
				return OnProcess(uiev);
				
			case InputEvent.Key_MWheelLeft:
				uiev.Type = UiEvent.Type_WheelLeft;
				return OnProcess(uiev);
				
			case InputEvent.Key_MWheelRight:
				uiev.Type = UiEvent.Type_WheelRight;
				return OnProcess(uiev);
			}
		}
		else if (ev.Type == InputEvent.Type_KeyUp)
		{
			bool b1 = false, b2 = false;
			switch (ev.KeyScan)
			{
			case InputEvent.Key_Mouse1:
				uiev.Type = UiEvent.Type_LButtonUp;
				b1 = OnProcess(uiev);
				uiev.Type = UiEvent.Type_LButtonClick;
				b2 = OnProcess(uiev);
				
			case InputEvent.Key_Mouse2:
				uiev.Type = UiEvent.Type_RButtonUp;
				b1 = OnProcess(uiev);
				uiev.Type = UiEvent.Type_RButtonClick;
				b2 = OnProcess(uiev);
				
			case InputEvent.Key_Mouse3:
				uiev.Type = UiEvent.Type_MButtonUp;
				b1 = OnProcess(uiev);
				uiev.Type = UiEvent.Type_MButtonClick;
				b2 = OnProcess(uiev);
			}
			
			return b1 || b2;
		}
		else if (ev.Type == InputEvent.Type_Mouse)
		{
			double x = ev.MouseX;
			double y = ev.MouseY;
			if (x != 0 || y != 0)
			{
				double mouseSpeed = 1.3;
				
				double offsX = x;
				double offsY = -y;
				
				offsX /= 4;
				offsX *= mouseSpeed;
				offsY *= mouseSpeed;
				
				mMouseX += offsX;
				mMouseY += offsY;
				
				Rect clientRect = GetClientRect();
				
				mMouseX = clamp(mMouseX, 0, Screen.GetWidth()-1);
				mMouseY = clamp(mMouseY, 0, Screen.GetHeight()-1);
			}
			
			uiev.Type = UiEvent.Type_MouseMove;
			uiev.MouseX = mMouseX;
			uiev.MouseY = mMouseY;
			return OnProcess(uiev);
		}
		
		return false;
	}
	
	bool OnProcessUi(UiEvent ev)
	{
		ElementEvent eev;
		eev.FromUiEvent(ev);
		return OnProcess(eev);
	}
	
	bool OnProcess(ElementEvent ev)
	{
		if (!mParent && ev.Type == UiEvent.Type_MouseMove)
		{
			mMouseX = ev.MouseX;
			mMouseY = ev.MouseY;
		}
		
		ElementEvent ev2;
		ev2.Type = ev.Type;
		ev2.KeyString = ev.KeyString;
		ev2.KeyChar = ev.KeyChar;
		ev2.MouseX = ev.MouseX;
		ev2.MouseY = ev.MouseY;
	
		for (int i = 0; i < mChildren.Size(); i++)
			if (mChildren[i].OnProcess(ev2)) return true;
		
		// this is terrible. help.
		if (ev2.Type > UiEvent.Type_FirstMouseEvent && ev2.Type < UiEvent.Type_LastMouseEvent)
		{
			// alter the coordinates for this particular element.
			double finalScale = 1;
			Element p = self;
			vector2 mc = (mMouseX, mMouseY);
			while (p)
			{
				finalScale *= p.mScale;
				p = p.mParent;
			}
			
			ev2.MouseX = mc.x / finalScale;
			ev2.MouseY = mc.y / finalScale;
		}
		
		return Process(ev2);
	}
	
	void OnTick()
	{
		Tick();
		for (int i = 0; i < mChildren.Size(); i++)
			mChildren[i].OnTick();
	}
	
	void OnDraw()
	{
		Draw();
		for (int i = 0; i < mChildren.Size(); i++)
			mChildren[i].OnDraw();
	}
	
	// various useful things
	Rect GetClientRect()
	{
		Rect r = mRect.Clone();
		r.X /= mScale;
		r.Y /= mScale;
		r.Width /= mScale;
		r.Height /= mScale;
		return r;
	}
	
	Rect GetScreenRect()
	{
		//
		Rect r = mRect.Clone();
		Element p = mParent;
		while (p)
		{
			r.X *= p.mScale;
			r.Y *= p.mScale;
			r.Width *= p.mScale;
			r.Height *= p.mScale;
			r.X += p.mRect.X;
			r.Y += p.mRect.Y;
			p = p.mParent;
		}
		//Console.Printf("ScreenRect = %s", r.ToString());
		return r;
	}
	
	vector2 GetMouseXY()
	{
		Rect sr = GetScreenRect();
		double finalScale = 1;
		Element p = self;
		vector2 mc = (0, 0);
		while (p)
		{
			finalScale *= p.mScale;
			if (!p.mParent)
				mc = ((p.mMouseX-sr.X), (p.mMouseY-sr.Y));
			p = p.mParent;
		}
		
		return (mc.x / finalScale, mc.y / finalScale);
	}
	
	Drawer GetDrawer()
	{
		return Drawer.Create(self);
	}
	
	// user functions
	//
	virtual void OnCreate()
	{
		
	}
	
	virtual bool Process(ElementEvent ev)
	{
		return false;
	}
	
	virtual void Tick()
	{
		//
	}
	
	virtual void Draw()
	{
		//
	}
}