// SETUP
image_speed = 0;

// MECHANICS
reachDist = 50;
stressLevel = 0;
stressMultiplier = 1;

pulseClicker = true;
pulseProbe = false;
pulseDog = false;

// ACTIONS PER SECOND
rateClick = 1;

// MAX PROJECTILES
maxClick = 2;

// PIXELS PER SECOND
walkSpeed = 128 * global.DT_STEP_PHYS;

// PIXELS PER TICK (RUNTIME)
xSpeed = 0;
ySpeed = 0;
_xSpeedScaled = 0;
_ySpeedScaled = 0;
xSpeedLast = 0;
ySpeedLast = 0;

xLast = x;
yLast = y;
xNew = x;
yNew = y;

xSubdivision = max(ceil((sprite_width+1) / TILE_SIZE), 1);
ySubdivision = max(ceil((sprite_height+1) / TILE_SIZE), 1);

xParts = (sprite_width-1)/xSubdivision;
yParts = (sprite_height-1)/ySubdivision;

// DEGREES
moveDir = 0;
lookDir = 0;
lookX = 0;
lookY = 0;

// COOLDOWNS (IN SECONDS)
cooldownProbe = 1;
cooldownDog = 5;

// TIMINGS
mAccumulator = 0;
mTick = 0;
pClickAccumulator = 0;
canFire = true;

pLight = instance_create_layer(x, y, "Lights", oLightPlayer);
pLight.image_xscale = 0.4*image_xscale;
pLight.image_yscale = 0.4*image_yscale;