// @description HANDLE PLAYER COLLISION
var _xCol = false;
var _yCol = false;

var _xNew = xNew;
var _yNew = yNew;

for (var row = 0; row <= xSubdivision; row++)
{
	for (var i = 0; i <= ySubdivision; i++)
	{
		if (row == 0 || i == 0 || row == xSubdivision || i == ySubdivision)
		{
			var xTarget = (i*(xParts));
			var yTarget = (row*(yParts));
				
			var xNewTemp = _xNew;
				
			// Calculate next game tick's movement
			// HORIZONTAL TILES
			if (!_xCol)
			{
				var cxa = tilemap_get_at_pixel(physMap, _xNew + xTarget + _xSpeedScaled + sign(_xSpeedScaled), _yNew + yTarget);
				if (cxa == 2)
				{
					_xCol = true;
						
					if (_xSpeedScaled > 0)
					{
						xNewTemp = _xNew - ((_xNew + sprite_width - 1) mod TILE_SIZE) + (TILE_SIZE - 1);
					}
					else xNewTemp = _xNew - (_xNew mod TILE_SIZE);
				}
				else xNewTemp = _xNew + _xSpeedScaled;
			}
				

			// VERTICAL TILES
			if (!_yCol)
			{
				var cya = tilemap_get_at_pixel(physMap, xNewTemp + xTarget, _yNew + yTarget + _ySpeedScaled + sign(_ySpeedScaled));
				if (cya == 2)
				{
					_yCol = true;
				}
			}
		}
		if (_xCol && _yCol) break;
	}
	if (_xCol && _yCol) break;
}
	
if (_xCol)
{
	if (_xSpeedScaled > 0)
	{
		_xNew = _xNew - ((_xNew + sprite_width - 1) mod TILE_SIZE) + (TILE_SIZE - 1);
	}
	else _xNew = _xNew - (_xNew mod TILE_SIZE);
}
else _xNew = _xNew + _xSpeedScaled;
	
	
if (_yCol)
{
	if (_ySpeedScaled > 0)
	{
		_yNew = _yNew - ((_yNew + sprite_height - 1) mod TILE_SIZE) + (TILE_SIZE - 1);
	}
	else _yNew = _yNew - (_yNew mod TILE_SIZE);
}
else _yNew = _yNew + _ySpeedScaled;

return [_xNew-xNew, _yNew-yNew]