/// @description INIT CAMERA
cam = view_camera[0];
follow = oPlayer;
cTime = 0;
cTick = 0;
cSpeed = 5;

halfWidth = camera_get_view_width(cam) * 0.5;
halfHeight = camera_get_view_height(cam) * 0.5;

lastXx = 0;
lastYy = 0;

xTo = xstart;
yTo = ystart;

// SCREENSHAKE
shakeLength = 0;
shakeMag = 0;
shakeRemain = 0;
xx = 0;
yy = 0;
