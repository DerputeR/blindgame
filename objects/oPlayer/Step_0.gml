if (!global.gamePaused && !global.gamePausedScene)
{
	// OBJECTIVE TOOLTIP
	if (instance_exists(objectiveTip))
	{
		if (instance_exists(toolTip)) instance_destroy(objectiveTip);
		else
		{
			ottAccumulator = ottAccumulator - objectiveTip.alphaSpeed*global.dt_steady;
			objectiveTip.alpha = lerp(0, 1, clamp(ottAccumulator, 0, 1));
		}
	}
	
	
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
	if (instUse != noone)
	{
		if (instUse.object_index == oKey)
		{
			if (!instance_exists(toolTip)) toolTip = CreateToolTip(0.5*global.viewResW, 0.75*global.viewResH, instUse.objName);
			else toolTip.text = instUse.objName;
		}		
		
		if (instUse != lastLook)
		{
			lastLook = instUse;
			if (global.debug) show_debug_message("Looking at " + instUse.objName);
		}
		
		// Doors and such
		if (keyUse && !instUse.use)
		{
			instUse.use = true;
			if (global.debug) show_debug_message("Used " + instUse.objName);
			if (instUse.object_index == oDoor && instUse.locked)
			{
				msg = "The " + string(instUse.objName) + " is locked."
			}
			if (instUse.object_index == oBed)
			{
				msg = "I don't feel tired"
			}
			if (instUse.object_index == oKey)
			{
				msg = string(instUse.objName) + " collected"
			}
			if (!instance_exists(toolTip)) toolTip = CreateToolTip(0.5*global.viewResW, 0.75*global.viewResH, msg);
			else toolTip.text = msg;
		}
	}
	
	if (instance_exists(toolTip))
	{
		if (instUse != noone)
		{
			ttAccumulator = min(1, ttAccumulator + toolTip.alphaSpeed*global.dt_steady);
		}
		else ttAccumulator = max(0, ttAccumulator - toolTip.alphaSpeed*global.dt_steady);

		toolTip.alpha = lerp(0, 1, ttAccumulator);
	}
	
	PlayerPulseClick();
}

