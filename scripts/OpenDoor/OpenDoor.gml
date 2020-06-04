/// @description Open the door
// argument0 keyNum

opened = !opened;
if (opened)
{	
	prevAngle = defaultRot;
	targetAngle = defaultRot + openAngle;
	oAccumulator = openTime - oAccumulator;
}
else
{
	prevAngle = defaultRot + openAngle;
	targetAngle = defaultRot;
	oAccumulator = openTime - oAccumulator;
}

