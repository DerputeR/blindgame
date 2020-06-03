// @description HANDLE PLAYER COLLISION
// @argument[] object(s) to check for collision
var _xCol = false;
var _yCol = false;

var _xNew = xNew;
var _yNew = yNew;

var xWhole = floor(abs(xNew))*sign(xNew);
var yWhole = floor(abs(yNew))*sign(yNew);


if (!_xCol)
{
	if (!place_free(xWhole + _xSpeedScaled, yNew))
	{
		var xBit = 0;
			
		while (place_free(xWhole + xBit, yNew))
		{
			_xNew = xWhole + xBit;
			xBit += sign(_xSpeedScaled);
		}
		_xCol = true;
	}
}
	
if (!_yCol)
{
	if (!place_free(_xNew, yWhole + _ySpeedScaled))
	{
		var yBit = 0;
		while (place_free(_xNew, yWhole + yBit))
		{
			_yNew = yWhole + yBit;
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


if (!_xCol) _xNew = xWhole + _xSpeedScaled;
if (!_yCol) _yNew = yWhole + _ySpeedScaled;

return [_xNew, _yNew, _xCol, _yCol]