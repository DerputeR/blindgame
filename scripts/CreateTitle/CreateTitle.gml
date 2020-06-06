/// @arg x
/// @arg y
/// @arg w
/// @arg h
/// @arg text
/// @arg selfDestruct

var _x = argument[0];
var _y = argument[1];
var _w = argument[2];
var _h = argument[3];
var _text = argument[4];
var _selfDestruct = argument[5];


// CREATE BUTTON
var _title = instance_create_layer(_x, _y, "Menus", mTitle);

// Set values
with (_title)
{
	w = _w;
	h = _h;
	text = _text;
	selfDestruct = _selfDestruct;
}

return (_title);