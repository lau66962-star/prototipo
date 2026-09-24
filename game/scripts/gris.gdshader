shader_type canvas_item;

// Shader del "mundo gris": desatura la imagen del viewport interno.
// mezcla = 1.0 (gris total) -> mezcla = 0.0 (color real).
// El futuro GestorColor irá moviendo esta variable para "despertar" el mundo.

uniform float mezcla : hint_range(0.0, 1.0) = 1.0;

void fragment() {
	vec4 c = texture(TEXTURE, UV);
	float gris = dot(c.rgb, vec3(0.299, 0.587, 0.114));
	c.rgb = mix(c.rgb, vec3(gris), mezcla);
	COLOR = c;
}