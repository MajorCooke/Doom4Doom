===========================================================================
Archive Maintainer      : (special instructions if any)
Update to               : D4D.pk3
Advanced engine needed  : GZDoom v3.6+
Primary purpose         : Single player, no levels included
===========================================================================
Title                   : DOOM(4) for DooM
Filename                : D4D.pk (or Doom4Doom.zip if downloaded from github)
Release date            : 10-31-16 (2.0.3)
Author                  : Major Cooke, Michaelis
Email Address           : MajorCooke22@gmail.com
Other Files By Author   : Major Cooke: 
							"AEons of Death", "DooMwinia"
                          Michaelis:  
							"AEons of Death", "ZBlood+", "Death Foretold",
							"Quake Champions: Doom Edition"
Misc. Author Info       : Stuff.

Description             : A gameplay mod bringing some of the Doom 4 mechanics 
                          and it's weapons, with mods included, to DooM.

Additional Credits to   : See credits section
===========================================================================
* What is included *

New levels              : None (unless you count the "Titlemap")
Sounds                  : Yes
Music                   : Titlemap, intermission and cluster text.
Graphics                : Yes
Dehacked/BEX Patch      : No
Demos                   : No
Other                   : A plethora of (G)ZDoom specific lumps
Other files required    : D4DResources.pk3 (DO NOT LOAD THIS FILE MANUALLY.)
							Make sure this is in the same directory as 
							D4D.pk3 OR Doom4Doom.zip.
							Do NOT add D4DResources to the launcher list!
							Load either D4D.pk3 or Doom4Doom.zip, NOT BOTH.

===========================================================================
* Play Information *

Game                    : Doom 2 (compatible with Ultimate Doom, Plutonia, TNT, etc.)
Map #                   : N/A
Single Player           : Designed for
Cooperative 2-4 Player  : Not yet
Deathmatch 2-4 Player   : No
Other game styles       : Not yet
Difficulty Settings     : Yes, a lot of them


===========================================================================
* Construction *

Base                    : New from scratch 
Build Time              : ~6 months for v1
Editor(s) used          : Slade, Programmer's notepad, GIMP, Audacity,
                          Notepad++, Paint.net, FL Studio, GitKraken, Sourcetree
Known Bugs              : * Sometimes glory kills will only do a quick punch
                          of death instead of the GK animation. Mastermind
                          GK will never show full animation due to tech
                          limitations.
                          * Sometimes glory killing will make monsters clip
                          through walls, floors or celings while being
                          executed.
Might Not Work With     : GZDoom devbuilds, unless mentioned otherwise.
Will NOT Work With 		: Zandronum. ZDoom. GZDoom v3.6 and older.
Tested With             : GZDoom v3.7

===========================================================================



===========================================================================
	***** Credits *****
	 *** Main Team ***
						  
Major Cooke             : Current owner. Project idea and direction. 
						  Design, creation and implementation of the "Holo
                          upgrade system". General overhaul of the weapon
                          code to enable "hold altfire to ready mod". Creator
                          of the BFG tracers and electric effects. Creator
                          of almost all particle effects, including bullet
                          tracers, pickup trails and just about every single
                          fancy particle system found in here. Finetuning
                          most of the ZScript code. Deprecation of many
                          ACS/DECORATE based systems for ZScript.
                          Implementation of "Double Double Trouble Trouble"
                          (double supershotgun) via overlays. Behavior and
                          visual effects of syphon grenade explosion. Coder
                          for spawned Holo-player. Developed and implemented
                          Half Life-like laser for Gauss Cannon, Static 
                          Rifle and many more. Created the Carrion Cannon,
						  powerup upgrades, and overhauled upgrade menu.
						  Almost all new code for v3.0+.
                          General DECORATE & ZScript mastermind.

Michaelis               : Ripping, conversion and processing of graphics for
                          the Heads Up Display. Implementation of reticles
                          specific to each weapon/demon, including the charging
                          animations. Ripping/processing/implementation of blood
                          elements in the hud (along with cacodemon HUD hits).
                          Implementation of multi jump and ledge grabbing.
                          Added powerups and situation-aware crates.
                          General SBARINFO & ACS mastermind.

ZZYZX                   : Making shaders for glory kill effect, shaders for
                          holographic effect. Current internal dev working on
                          top secret stuff.
						  
Neccronixis             : Creator of all the Doom 4 weapon sprites (until 3.0+) 						  
						  & doomdoll pickup and animation.

	** Individual Credits **

DBThanatos              : Ex-author as of 2.0.3.
                          Import, offseting, renaming all of Neccronixis' weapon
                          sprites. Edited all muzzleflash sprites from the 
                          weapons. Created base functional code of all weapons.
                          Doom4 sound ripping, conversion and processing. 
                          Created voxels for: ammo pickups, health pickups,
                          armor pickups, chaingun pickup and it's holograph
                          version, all holo system mod/upgrades and cursor.
                          Created sprites for all voxels DBT made.
                          Coding and adding all decals for monsters and
                          weapons. Coded all monsters. Titlemap. Menu
                          graphics and design. Implementation of DoomDoll
                          and grenade system. "Roach" monster recolor (which
                          was used as D4D imp). Game balance.
                          Resource gatherer and organizer.  
                          Final polishing of visual effects until v2.0.3 release.
						  
DrPyspy					: Spider Mastermind & Cyberdemon sound effects.

Roxas                   : Creator of the weapon voxels minus the "chaingun". 
                          Teaching DBT how to do voxels from scratch.

Xaser                   : Assistance in creating the Titlemap. General advisor.
                          Fine tuning of weapon animations.

HorrorMovieGuy          : Doom 64 Pinky with classic Doom's color pallete, glory
                          kill base system.

The Zombie Killer       : Footsteps scripting system & sounds.

BeardedDoomGuy          : Creating the "Demon tears mug" image.

Zanieon                 : Bullet tracer model & texture, 1st iteration of Baron
                          sounds. Baron of Hell and Hell Knight sprites.
						  Teaching Major Cooke useful stuff about models and 
						  nifty 'hires' folder trick for hi-def weapon sprites.

Phobos867               : D4 Imp sprite, modified from the "Roach" monster and
                          Cacodemon sprite.
                          
MW-21                   : Sound contributions for Archvile and Arachnotron.

Nightquaker             : Chainsaw ammo meters fix

Gutawer					: Player damage shader effect
						  Gutamatics library

Marisa Kirisami			: Matrix4 class and tips on producing better lightning.
						  NotHudMessage utility.

PhantomBeta				: Providing the intercepting projectile code.

Cactus Hege				: Inspiration for the Rainbow Doom(4) monsters. Concept 
						  (no code) taken from Colorful Hell with permission.
						  
Nev3r					: Shoulder cannon sprite.

Amuscaria               : Monster sprites for Arachnotron, Archvile, Hell
                          Mancubus, Baron of Hell, Pain Elemental. All from
                          Demon Eclipse.

Voxelbro                : AllMap, RadSuit & Berserk voxels

ScubaSteve              : First person Mancubus weapons

Mike12                  : First person Revenant cannons

Legendary				: Sound effects for some forthcoming powerups.

DoomKrakken				: Sound effects for single player weapons.

Tormentor667,
SolarSnowfall,
GhastlyDragon			: Spark sprite for lightning gun puffs. Taken from 
						  S.U.P.E.R. Natural.
						  
Phobos867				: "Phobos867's Add-ons for D4D" addon content.

Beed28					: Stealth monster replacements. Flexible monster type 
						  idea that turned into "mod compatibility" idea to 
						  allow playing with another monster replacement mod 
						  such as Complex Doom.
						  
VICE					: "D4DHF" addon content.


	** Other credits **

Death Foretold			: Sound effects for multiplayer weapons. Extra reticles.

OpenGameArt				: Lots of effects from here.
						  https://opengameart.org/content/2d-effects

id Software             : Quake 4 / Doom 2016 sounds, graphics, and models

Flying Wild Hog         : Hard Reset sounds

Activision              : Battlezone I & II sounds

Monolith                : Sprite used for Baron of Hell hand

Blizzard                : Diablo II Sound (just one!)

Xeotroid				: Ripping Doom 4 Cyberdemon sounds

Croteam					: Serious Sam's Serious Damage sound





	*** Beta Testers ***

- 3xlneet
- Colossus
- ClownMan
- DoomKrakken
- GlenSkunk
- Hellstorm Archon
- iSpook
- Matsilagi
- Maxwell
- MJ79
- Snivyus
- TheZombieKiller
- TiberiumSoul
- Syrix
- Iamcarrotmaster

	** Retired Testers **

- BeardedDoomGuy		(2.0.3)
- DrPyspy				(2.0.3)
- Hellser				(2.0.3)
- JohnnyTheWolf 		(2.0.3)
- MW-21					(Unknown release retirement)
- ShadowTiger			(2.0.3)
- Viscra Maelstrom		(2.0.3)
- Zanieon				(2.0.3)
- Roxas					(2.0.3)
- Xaser					(2.0.3)



* For monsters from Realm667 *


- "Roach" (base sprite for Imp)
Sprites: vader
Sprite Edit: Ghastly_dragon, Mike12

- "Psychic soul" (Lost Soul replacement)
Sprites: Id Software
Sprite Edit: Neoworm, Maelstrom

- "Blasterborg" (Shotgun Guy replacement)
Sprites: Id Software, 3D Realms
Sprite Edit: Neoworm

- "Rapid fire trooper" (Zombieman replacement)
Sprites: Id Software
Sprite Edit: NMN, Tormentor667

================================================================================
* Contact Information *

Want to let me know about your thoughts, comments or ask questions?

Discord server: https://discord.gg/RehCYqS
ZDoom thread:	https://forum.zdoom.org/viewtopic.php?f=43&t=54843
Email:			majorcooke22@gmail.com

I HIGHLY recommend joining the discord server. That is where I'm most active.
You get free spoilers on occasion that I'm too forgetful to post anywhere else. 

================================================================================
* Copyright / Permissions *

Authors MAY use the contents of this file as a base for
modification or reuse. JUST LET ME KNOW. :) Permissions have been obtained 
from original authors for any of their resources modified or included 
in this file.

Authors who copy the libraries MUST include the license(s) present in the 
folders.

You MAY distribute this file, provided you include this text file, with
no modifications. You may distribute this file in any electronic
format as long as you include this file intact. I have received permission 
from the original authors of any modified or included content in this file 
to allow further distribution.

================================================================================

Have fun!