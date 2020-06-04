/// @description Insert description here
// You can write your code in this editor

if (use)
{
	if (!locked)
	{
		OpenDoor();
		with (oDoor)
		{
			if (doubleDoor == true && other.doubleDoor == true && keyNum = other.keyNum && id != other.id)
			{
				OpenDoor();
				if (global.debug) show_debug_message("double door: " + string(id));
			}
		}
	}
	use = !use;
}
inCol = (place_meeting(x, y, oPlayer));
if (opened) solid = false
else if (!opened && !inCol && image_angle=targetAngle) solid=true;

// Lerp open/closed
if (oAccumulator < openTime)
{
	oAccumulator = min(oAccumulator + global.dt_steady, openTime)
}

image_angle = lerp(prevAngle, targetAngle, oAccumulator/openTime);
