// @description unlock door(s)
// @argument0 keyNum
with (oDoor)
{
	if (keyNum == argument0 && locked)
	{
		locked = false;
		if (global.debug) show_debug_message("Unlocked door " + string(keyNum));
	}
}