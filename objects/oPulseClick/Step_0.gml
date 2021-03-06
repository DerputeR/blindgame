/// @description Insert description here
// You can write your code in this editor

if (!global.gamePaused && !global.gamePausedScene)
{
	// LIFE
	pulseLife = max(pulseLife - global.dt_steady, 0);

	// CLEANUP
	if (pulseLife == 0)
	{
		instance_destroy(self, false);
	}

	var _firstTick = true;

	// MOTION AND COLLISION
	if (pulseLife > 0 && !global.gamePaused && !global.gamePausedScene)
	{
		while (mTick > 0)
		{
			if (_firstTick)
			{
				_firstTick = false;
				xLast = xNew;
				yLast = yNew;
			}
	
			// Record last game tick's data
			xSpeedLast = xSpeed;
			ySpeedLast = ySpeed;
	
			// For compatability with CollisionBrushes()
			_xSpeedScaled = xSpeed;
			_ySpeedScaled = ySpeed;
	
			var calcPos = CollisionBrushes();

			var xBounce = calcPos[2];
			var yBounce = calcPos[3];
		
			var iCol = calcPos[4];
			if (xBounce || yBounce)
			{
				if (pulseLife != 0)
				{
					var pLight = instance_create_layer(xLast, yLast, "Lights", oLightPoint);
					pLight.maxIntensity = power((pulseLife/pulseLifeMax), 2);
				}
				pulseLife = max(pulseLife - iCol.collisionCost, 0); 
			}
	
			if (xBounce) xSpeed = -xSpeed;
			if (yBounce) ySpeed = -ySpeed;
	
			xNew += xSpeed;
			yNew += ySpeed;
	
			mTick--;
		}

		// LERP TO NEW LOCATION
		var s = clamp(mAccumulator/global.DT_STEP_PHYS, 0, 1);
		x = lerp(xLast, xNew, s);
		y = lerp(yLast, yNew, s);
	
		// UPDATE OPACITY
		image_alpha = (pulseLife/pulseLifeMax);

		// TIMING
		mAccumulator += global.dt_steady;
		while (mAccumulator > global.DT_STEP_PHYS)
		{
			mAccumulator -= global.DT_STEP_PHYS;
			mTick++;
		}
	}
}