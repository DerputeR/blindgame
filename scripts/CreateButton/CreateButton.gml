/// @arg x
/// @arg y
/// @arg w
/// @arg h
/// @arg text
/// @arg script
/// @arg scriptArgs
/// @arg enabled
/// @arg selfDestruct

var _x = argument[0];
var _y = argument[1];
var _w = argument[2];
var _h = argument[3];
var _text = argument[4];
var _script = argument[5];
var _scriptArgs = argument[6];
var _enabled = argument[7];
var _selfDestruct = argument[8];


// CREATE BUTTON
var _button = instance_create_layer(_x, _y, "Menus", mButton);

// Set values
with (_button)
{
	w = _w;
	h = _h;
	text = _text;
	script = _script;
	scriptArgs = _scriptArgs;
	enabled = _enabled;
	selfDestruct = _selfDestruct;
}

return (_button);