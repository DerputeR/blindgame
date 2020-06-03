// @ unlock door(s)
// @argument0 keyNum
with (oDoor)
{
	if (keyNum == argument0 && locked)
	{
		locked = false;
	}
}