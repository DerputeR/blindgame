/// @description
var _hover = GetHover() && enabled;
var _click = _hover && mouse_check_button_pressed(mb_left);

// Hover
var p = global.dt_steady*hoverSpeed;
hover = lerp(hover, _hover, p);

// Click
if (_click)
{
	if (global.debug) show_debug_message("Pressed " + text);
	if (script != -1) 
	{
		script_execute(script, scriptArgs);
	}
}

// For self destructing buttons
if (selfDestruct)
{
	if (alpha == 0)
	{
		instance_destroy(self, false);
	}
}
