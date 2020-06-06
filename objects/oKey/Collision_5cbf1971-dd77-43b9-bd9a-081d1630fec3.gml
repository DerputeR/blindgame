UnlockDoor(keyNum);
if (global.debug) show_debug_message("Player collected " + objName + " (key #" + string(keyNum) + ")");
instance_destroy(self);