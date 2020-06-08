/// @description Insert description here
// You can write your code in this editor
msg = string(other.objName) + " collected"
if (!instance_exists(toolTip)) toolTip = CreateToolTip(0.5*global.viewResW, 0.75*global.viewResH, msg);
else toolTip.text = msg;