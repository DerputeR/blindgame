//currently broken
// @description HANDLE PLAYER COLLISION
var _xCol = false;
var _yCol = false;
var _catchUpTick = 0;
var _firstTick = true;

// FOR MID-TICK MOVEMENT CHANGES - CAUSES SOME JITTER DUE TO OVERRIDE OF LERP 
//if (((xSpeedLast != xSpeed) || (ySpeedLast != ySpeed)))
//{
//	_catchUpTick = accumulator;
//	mTick++;
//  totalTicks++;
//}

while (mTick > 0)
{
	if (_firstTick && _catchUpTick == 0)
	{
		_firstTick = false;
		xLast = xNew;
		yLast = yNew;
	}
	
	// For when moveDir changes between game ticks
	var _xSpeedScaled = xSpeed * ((global.DT_STEP_PHYS-_catchUpTick)/global.DT_STEP_PHYS);
	var _ySpeedScaled = ySpeed * ((global.DT_STEP_PHYS-_catchUpTick)/global.DT_STEP_PHYS);
	
	var xTarget = 0;
	var yTarget = 0;
	
	for (var row = 0; row <= xSubdivision; row++)
	{
		for (var i = 0; i <= ySubdivision; i++)
		{
			if (row == 0 || i == 0 || row == xSubdivision || i == ySubdivision)
			{
				xTarget = (i*(xParts));
				yTarget = (row*(yParts));
				
				// Calculate next game tick's movement
				// HORIZONTAL TILES
				if (!_xCol)
				{
					var cxa = tilemap_get_at_pixel(physMap, xNew + xTarget + _xSpeedScaled + sign(_xSpeedScaled), yNew + yTarget);
					if (cxa == 2)
					{
						_xCol = true;
						show_debug_message("\nTick: " + string(totalTicks));
						show_debug_message("X col at row " + string(row) + ", index " + string(i));
						show_debug_message("X col at x: " + string(xTarget) + ", y: " + string(yTarget));
						show_debug_message("X-sub: " + string(xSubdivision) + ", Y-sub: " + string(ySubdivision));
						show_debug_message("X-last: " + string(xLast) + ", Y-last: " + string(yLast));
						show_debug_message("X-new: " + string(xNew) + ", Y-new: " + string(yNew));
						show_debug_message("X: " + string(x) + ", Y: " + string(y));
					}
				}				

				// VERTICAL TILES
				if (!_yCol)
				{
					var cya = tilemap_get_at_pixel(physMap, xNew + xTarget, yNew + yTarget + _ySpeedScaled + sign(_ySpeedScaled));
					if (cya == 2)
					{
						_yCol = true;
						show_debug_message("\nTick: " + string(totalTicks));
						show_debug_message("V col at row " + string(row) + ", index " + string(i));
						show_debug_message("V col at x: " + string(xTarget) + ", y: " + string(yTarget));
						show_debug_message("X-sub: " + string(xSubdivision) + ", Y-sub: " + string(ySubdivision));
						show_debug_message("X-last: " + string(xLast) + ", Y-last: " + string(yLast));
						show_debug_message("X-new: " + string(xNew) + ", Y-new: " + string(yNew));
						show_debug_message("X: " + string(x) + ", Y: " + string(y));
					}
				}
			}
			if (_xCol && _yCol)
			{
				break;
			}
		}
		if (_xCol && _yCol) break;
	}
	
	if (!_xCol && !_yCol)
	{
		show_debug_message("\nTick: " + string(totalTicks));
		show_debug_message("No collision this tick.");
	}
	
	if (_xCol)
	{
		if (_xSpeedScaled > 0)
		{
			//xNew = xNew - ((xNew + sprite_width) mod TILE_SIZE) + (TILE_SIZE-1);
			xNew = xNew - ((xNew + sprite_width - 1) mod TILE_SIZE) + (TILE_SIZE - 1);
		}
		else xNew = xNew - (xNew mod TILE_SIZE);
	}
	else xNew = xNew + _xSpeedScaled;
	
	
	if (_yCol)
	{
		if (_ySpeedScaled > 0)
		{
			yNew = yNew - ((yNew + sprite_height - 1) mod TILE_SIZE) + (TILE_SIZE - 1);
		}
		else yNew = yNew - (yNew mod TILE_SIZE);
	}
	else yNew = yNew + _ySpeedScaled;
	
	
	_catchUpTick = 0;
	mTick--;
}








// LERP TO NEW LOCATION
var s = clamp(accumulator/global.DT_STEP_PHYS, 0, 1);
x = lerp(xLast, xNew, s);
y = lerp(yLast, yNew, s);

//x = xNew;
//y = yNew;

// TIMING
accumulator += global.dt_steady;
while (accumulator > global.DT_STEP_PHYS)
{
	accumulator -= global.DT_STEP_PHYS;
	mTick++;
	totalTicks++;
}

return [_xCol, _yCol];