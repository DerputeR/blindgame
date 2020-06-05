/// @description Insert description here
// You can write your code in this editor

// LIFE
if (accumulator < lightUpTime)
{
	accumulator = min(accumulator + global.dt_steady, lightUpTime);
	intensity = maxIntensity * (accumulator / lightUpTime);
}
else
{
	intensity = max(intensity - (clamp(2*maxIntensity, 0, 1)*global.dt_steady/lifeMax), 0);
	image_xscale = initScale * (diffuse*power(1-intensity, diffusePow)+1);
	image_yscale = initScale * (diffuse*power(1-intensity, diffusePow)+1);
}

// CLEANUP
if (intensity == 0)
{
	instance_destroy(self, true);
}

