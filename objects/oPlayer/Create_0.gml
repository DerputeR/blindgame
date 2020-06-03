// DEBUG
show_debug_overlay(true);

// SETUP
physMap = layer_tilemap_get_id(layer_get_id("Phys"));
image_speed = 0;

// MECHANICS
stressLevel = 0;
stressMultiplier = 1;

pulseClicker = true;
pulseProbe = false;
pulseDog = false;

// PIXELS PER SECOND
walkSpeed = 3;
xSpeed = 0;
ySpeed = 0;

xStart = x;
yStart = y;
xLast = x;
yLast = y;
xNew = x;
yNew = y;

xSubdivision = max(ceil(sprite_width / TILE_SIZE), 1);
ySubdivision = max(ceil(sprite_height / TILE_SIZE), 1);

// DEGREES
moveDir = 0;

// COOLDOWNS (IN SECONDS)
cooldownProbe = 1;
cooldownDog = 5;

// TIMINGS
accumulator = 0;
mTick = 0;
totalTicks = 0;
