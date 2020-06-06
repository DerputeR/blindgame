/// @description LAYER MANAGEMENT
global.gamePaused = false;
if (layer_exists("Brushes")) layer_set_visible("Brushes", global.debug);
if (layer_exists("Lights")) layer_set_visible("Lights", global.lights);