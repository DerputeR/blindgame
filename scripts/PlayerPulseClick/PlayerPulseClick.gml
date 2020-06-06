// PULSE (PROJECTILE FIRING)
var instCount = instance_number(oPulseClick)
if (canFire && keyAttack && instCount <= (maxClick*pulseCount) - pulseCount)
{
	for (var count = 0; count < pulseCount; count++)
	{	
		var fireDir = lookDir
		if (pulseCount > 0)
		{
			fireDir = lookDir - (0.5*pulseAngle) + (pulseAngle*(count/(pulseCount-1)));
		}
		var pClick = instance_create_layer(x, y, "Pulses", oPulseClick);
		with pClick
		{
			moveDir = fireDir;
			xSpeed = lengthdir_x(pulseSpeed, moveDir);
			ySpeed = lengthdir_y(pulseSpeed, moveDir);
			image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		}
	}
		
	canFire = false;
}

pClickAccumulator += global.dt_steady;
while (pClickAccumulator > rateClick)
{
	pClickAccumulator -= rateClick;
	canFire = true;
}

