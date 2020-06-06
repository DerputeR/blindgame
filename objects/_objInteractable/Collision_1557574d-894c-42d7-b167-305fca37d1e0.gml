/// @description Summon a light to highlight this object if a pulse light collides with it
if (glowOnReveal)
{
	var l = instance_create_layer(other.x, other.y, "Lights", oLightPoint);	
	l.initScale = 0.08*image_yscale;
	l.image_xscale = l.initScale;
	l.image_yscale = l.initScale;
	l.maxIntensity = 0.3*power((other.pulseLife/other.pulseLifeMax), 2);
	l.intensity = 0;

	// in seconds
	l.lightUpTime = 0.1;
	l.lifeMax = 3;

	// magnitude
	l.diffuse = 2;
	l.diffusePow = 12;
}
