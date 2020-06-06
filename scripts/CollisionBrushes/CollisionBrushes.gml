// @description HANDLE COLLISION
var _xCol = false;
var _yCol = false;

var _xNew = xNew;
var _yNew = yNew;

var _iCol = noone;

if (!_xCol)
{
	if (!place_empty(xNew + _xSpeedScaled, yNew, _oParent))
	{
		_iCol = instance_place(xNew + _xSpeedScaled, yNew, _oParent);
		if (_iCol.solid)
		{
			var xBit = 0;
			//var stuck = true;
			
			while (place_empty(xNew + xBit, yNew, _oParent))
			{
				//stuck = false;
				_xNew = xNew + xBit;
				xBit += sign(_xSpeedScaled);
			}
			
			// if you get stuck in something, push out
			//if (stuck)
			//{
			//	while (!place_empty(xNew + xBit, yNew, _oParent))
			//	{
			//		_xNew = xNew + xBit;
			//		xBit -= sign(_xSpeedScaled);
			//	}
			//	stuck = false;
			//}
			
			_xCol = true;
		}
	}
}
	
if (!_yCol)
{
	if (!place_empty(_xNew, yNew + _ySpeedScaled, _oParent))
	{
		_iCol = instance_place(_xNew, yNew + _ySpeedScaled, _oParent);
		if (_iCol.solid)
		{
			var yBit = 0;
			//var stuck = true;
			
			while (place_empty(_xNew, yNew + yBit, _oParent))
			{
				//stuck = false;
				_yNew = yNew + yBit;
				yBit += sign(_ySpeedScaled);
			}
			
			// if you get stuck in something, push out
			//if (stuck)
			//{
			//	while (!place_empty(_xNew, yNew + yBit, _oParent))
			//	{
			//		_yNew = yNew + yBit;
			//		yBit -= sign(_ySpeedScaled);
			//	}
			//	stuck = false;
			//}
			
			_yCol = true;
		}
	}
}


if (!_xCol) _xNew = xNew + _xSpeedScaled;
if (!_yCol) _yNew = yNew + _ySpeedScaled;

return [_xNew, _yNew, _xCol, _yCol, _iCol]