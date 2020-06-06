/// @description INIT CAMERA
cam = view_camera[0];
follow = oPlayer;
cTime = 0;
cTick = 0;
cSpeed = 5;

camera_set_view_size(cam, global.camResW, global.camResH) ;

halfWidth = camera_get_view_width(cam) * 0.5;
halfHeight = camera_get_view_height(cam) * 0.5;

lastXx = 0;
lastYy = 0;

if (instance_exists(follow))
{
	x = follow.x
	y = follow.y;
}

xTo = x;
yTo = y;

// SCREENSHAKE
shakeLength = 0;
shakeMag = 0;
shakeRemain = 0;
xx = 0;
yy = 0;
