// PULSE (PROJECTILE FIRING)
if (canFire && keyAttack && instance_number(oPulseClick) < maxClick)
{
	var pClick = instance_create_layer(x, y, "Pulses", oPulseClick);
	with pClick
	{
		moveDir = other.lookDir;
		xSpeed = lengthdir_x(pulseSpeed, moveDir);
		ySpeed = lengthdir_y(pulseSpeed, moveDir);
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
	}
		
	canFire = false;
}

pClickAccumulator += global.dt_steady;
while (pClickAccumulator > rateClick)
{
	pClickAccumulator -= rateClick;
	canFire = true;
}

