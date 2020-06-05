/// @description Insert description here
// You can write your code in this editor

// LIFE
if (accumulator < lightUpTime)
{
	accumulator = min(accumulator + global.dt_steady, lightUpTime);
	intensity = maxIntensity * (accumulator / lightUpTime);
	//image_xscale += (global.dt_steady / lightUpTime)*initScale/maxIntensity;
	//image_yscale += (global.dt_steady / lightUpTime)*initScale/maxIntensity;
}
else
{
	intensity = max(intensity - (maxIntensity*global.dt_steady/lifeMax), 0);
	image_xscale = initScale * (diffuse*sqr(1-intensity)+1);
	image_yscale = initScale * (diffuse*sqr(1-intensity)+1);
}

// CLEANUP
if (intensity == 0)
{
	instance_destroy(self, true);
}

