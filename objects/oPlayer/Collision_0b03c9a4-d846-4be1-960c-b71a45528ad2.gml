/// @description Insert description here
// You can write your code in this editor
instance_destroy(toolTip);
instance_destroy(objectiveTip);
ottAccumulator = 3;
msg = string(other.objName) + " collected"
objectiveTip = CreateToolTip(0.5*global.viewResW, 0.75*global.viewResH, msg);
objectiveTip.alphaSpeed = 1;