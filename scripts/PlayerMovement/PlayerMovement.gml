var _catchUpTick = 0;
var _firstTick = true;

// FOR MID-TICK MOVEMENT CHANGES - CAUSES SOME JITTER DUE TO OVERRIDE OF LERP 
//if (((xSpeedLast != xSpeed) || (ySpeedLast != ySpeed)))
//{
//	_catchUpTick = mAccumulator;
//	mTick++;
//}

while (mTick > 0)
{
	if (_firstTick && _catchUpTick == 0)
	{
		_firstTick = false;
		xLast = xNew;
		yLast = yNew;
	}
	
	// Record last game tick's data
	xSpeedLast = xSpeed;
	ySpeedLast = ySpeed;
		
	// For when moveDir changes between game ticks
	_xSpeedScaled = xSpeed * ((global.DT_STEP_PHYS-_catchUpTick)/global.DT_STEP_PHYS);
	_ySpeedScaled = ySpeed * ((global.DT_STEP_PHYS-_catchUpTick)/global.DT_STEP_PHYS);
	
	var calcPos = CollisionBrushes();
	xNew = calcPos[0];
	yNew = calcPos[1];
	
	_catchUpTick = 0;
	mTick--;
}

// LERP TO NEW LOCATION
var s = clamp(mAccumulator/global.DT_STEP_PHYS, 0, 1);
x = lerp(xLast, xNew, s);
y = lerp(yLast, yNew, s);

// TIMING
mAccumulator += global.dt_steady;
while (mAccumulator > global.DT_STEP_PHYS)
{
	mAccumulator -= global.DT_STEP_PHYS;
	mTick++;
}