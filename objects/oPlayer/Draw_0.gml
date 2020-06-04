/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, lookDir, image_blend, image_alpha);

// Debug draws
if (global.debug)
{
	// Draw collision line for interaction
	draw_line(x, y, x+lookX, y+lookY);
}