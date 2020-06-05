if (!global.gamePaused && !global.gamePausedScene)
{
	keyLeft = keyboard_check(global.kcLeft);
	keyRight = keyboard_check(global.kcRight);
	keyUp = keyboard_check(global.kcUp);
	keyDown = keyboard_check(global.kcDown);
	keyAttack = mouse_check_button_pressed(global.kcAttack);
	keyAttack2 = mouse_check_button_pressed(global.kcAttack2);
	keyUse = keyboard_check_pressed(global.kcUse);
	
	// MOVEMENT INPUT
	movingY = ((keyDown - keyUp) != 0);
	movingX = ((keyRight - keyLeft) != 0);
	moveMag = (movingX || movingY);

	if ((movingX || movingY))
	{
		moveDir = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
	}

	// COLLISION AND MOVEMENT
	xSpeed = lengthdir_x(moveMag * walkSpeed, moveDir);
	ySpeed = lengthdir_y(moveMag * walkSpeed, moveDir);

	PlayerMovement();
	
	// INTERACTION
	lookDir = point_direction(x, y, mouse_x, mouse_y);
	lookX = lengthdir_x(reachDist, lookDir);
	lookY = lengthdir_y(reachDist, lookDir);
	
	var instUse = collision_line(x, y, x+lookX, y+lookY, _objInteractable, true, true);
	
	// Doors and such
	if (keyUse)
	{
		if (instUse != noone && !instUse.use)
		{
			if (global.debug) show_debug_message("used " + string(instUse));
			instUse.use = true;
		}
	}
	
	PlayerPulseClick();
}

