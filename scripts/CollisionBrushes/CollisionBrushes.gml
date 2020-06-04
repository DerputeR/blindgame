// @description HANDLE COLLISION
var _xCol = false;
var _yCol = false;

var _xNew = xNew;
var _yNew = yNew;

if (!_xCol)
{
	if (!place_free(xNew + _xSpeedScaled, yNew))
	{
		var xBit = 0;
			
		while (place_free(xNew + xBit, yNew))
		{
			_xNew = xNew + xBit;
			xBit += sign(_xSpeedScaled);
		}
		_xCol = true;
	}
}
	
if (!_yCol)
{
	if (!place_free(_xNew, yNew + _ySpeedScaled))
	{
		var yBit = 0;
		while (place_free(_xNew, yNew + yBit))
		{
			_yNew = yNew + yBit;
			yBit += sign(_ySpeedScaled);
		}
		_yCol = true;
	}
}
	
//if (!_xCol && !_yCol)
//{
//	if (place_meeting(xNew + _xSpeedScaled, yNew + _ySpeedScaled, argument[0]))
//	{
//		_xCol = true;
//		_yCol = true;
//	}
//}


if (!_xCol) _xNew = xNew + _xSpeedScaled;
if (!_yCol) _yNew = yNew + _ySpeedScaled;

return [_xNew, _yNew, _xCol, _yCol]