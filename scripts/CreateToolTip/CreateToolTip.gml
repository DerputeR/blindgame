/// @arg x
/// @arg y
/// @arg text

var _x = argument[0];
var _y = argument[1];
var _text = argument[2];


// CREATE BUTTON
var _toolTip = instance_create_layer(_x, _y, "HUD", oToolTip);

// Set values
with (_toolTip)
{
	text = _text;
}

return (_toolTip);