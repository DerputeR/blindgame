/// @description Toggle game pause
if (argument0 == 1) global.gamePaused = true;
else if (argument0 == 0) global.gamePaused = false;
else global.gamePaused = !global.gamePaused;
if (global.gamePaused)
{
	if (!instance_exists(oPauseMenu)) instance_create_layer(0, 0, "Menus", oPauseMenu);
}
