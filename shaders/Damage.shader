void main() {
	vec2 newCoord = TexCoord - 0.5;
	newCoord *= 1 - damageFactor;
	newCoord += 0.5;
	FragColor = (texture(InputTexture, newCoord) + texture(InputTexture, TexCoord)) / 2;
}