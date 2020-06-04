/// @description Insert description here
// You can write your code in this editor

with (self)
{
	if (use)
	{
		if (!locked)
		{
			opened = !opened;
			if (opened)
			{
				image_angle-=90;
			}
			else
			{
				image_angle+=90;
			}
		}
		use = !use;
	}
	inCol = (place_meeting(x, y, oPlayer));
	if (opened) solid = false
	else if (!opened && !inCol) solid=true;
}
