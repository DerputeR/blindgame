/// @description Insert description here
// You can write your code in this editor
draw_sprite_pos(sprite_index, image_index, 0, 0, global.viewResW, 0, global.viewResW, global.viewResH, 0, global.viewResH, image_alpha);

if (tProg = 0)
{	
	image_alpha = min(image_alpha + (global.dt_steady/tStart), 1);
	if (image_alpha == 1) tProg = 1;
}
else if (tProg = 1)
{
	global.gamePausedScene = true;
	tAcc += global.dt_steady;
	if (tAcc >= tHold)
	{
		tProg = 2;
		room_goto(rDestination);
	}
}
else
{
	image_alpha = max(image_alpha - (global.dt_steady/tEnd), 0);
	if (image_alpha == 0)
	{
		global.gamePausedScene = false;
		instance_destroy(self, false);
	}
}

