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
walkSpeed = 1;
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

// COOLDOWNS (IN SECONDS)
cooldownProbe = 1;
cooldownDog = 5;

// TIMINGS
accumulator = 0;
mTick = 0;