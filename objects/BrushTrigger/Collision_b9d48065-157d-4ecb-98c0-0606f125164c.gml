script_execute(script, arg);
if (global.debug) show_debug_message("Player trigged " + string(id) + "at x: " + string(x) + ", y: " + string(y));
instance_destroy(self);