/// @description UPDATE CAMERA
// This "Camera object" isn't the camera, rather, it moves, and the actual camera follows it

if (!global.gamePaused)
{
	var _firstTick = true;

	var sx = xx;
	var sy = yy;

	// TICKS
	while (cTick > 0)
	{
		if (instance_exists(follow))
		{
			xTo = follow.x;
			yTo = follow.y;
		}
	
		// SCREENSHAKE
		if (shakeRemain != 0)
		{
			if (_firstTick)
			{
				_firstTick = false;
				lastXx = xx;
				lastYy = yy;
			}
			xx = random_range(-shakeRemain, shakeRemain);
			yy = random_range(-shakeRemain, shakeRemain);
			shakeRemain = max(0, shakeRemain - ((shakeMag/shakeLength) * global.timeScale * global.DT_STEP_PHYS));
		}
		else
		{
			lastXx = 0;
			lastYy = 0;
			xx = 0;
			yy = 0;
			sx = 0;
			sy = 0;
		}
		cTick--;
	}

	// LERP
	var p = global.dt_steady*cSpeed;
	x = lerp(x, xTo, p);
	y = lerp(y, yTo, p);

	if (shakeRemain != 0)
	{
		var s = clamp(cTime/global.DT_STEP_PHYS, 0, 1);
		sx = lerp(lastXx, xx, s);
		sy = lerp(lastYy, yy, s);
	}

	// CLAMP WITHIN ROOM
	x = clamp(x, halfWidth, room_width-halfWidth);
	y = clamp(y, halfHeight, room_height-halfHeight);	

	// APPLY (MAKE THE ACTUAL CAMERA FOLLOW THIS OBJECT)
	camera_set_view_pos(cam, x + sx - halfWidth, y + sy - halfHeight);

	// TIMING
	cTime += global.dt_steady;
	while (cTime > global.DT_STEP_PHYS)
	{
		cTime -= global.DT_STEP_PHYS;
		cTick++;
	}
}