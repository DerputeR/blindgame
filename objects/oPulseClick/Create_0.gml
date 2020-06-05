/// @description Insert description here
// You can write your code in this editor

// Longest a pulse can last = x seconds
pulseLifeMax = 5;
pulseLife = pulseLifeMax;

collisionCost = 0.3

// PIXELS PER SECOND
pulseSpeed = 6;
xSpeed = 0;
ySpeed = 0;
xSpeedLast = 0;
ySpeedLast = 0;

xLast = x;
yLast = y;
xNew = x;
yNew = y;

// DEGREES
moveDir = 0;

// TIMINGS
mAccumulator = 0;
mTick = 0;

if (global.debug) show_debug_message("Summoned a pulse click (" + string(instance_number(oPulseClick)) + ")");