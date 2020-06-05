/// @description Initializers
// DEBUG
global.debug = false;
global.lights = true;

// Total game pause
global.gamePaused = false;

// Game pause due to cutscene
global.gamePausedScene = false;

// KEYBINDS (ADD IN SETTINGS LATER)
global.kcLeft = ord("A");
global.kcRight = ord("D");
global.kcUp = ord("W");
global.kcDown = ord("S");

global.kcAttack = mb_left;
global.kcAttack2 = mb_right;
global.kcUse = ord("E");
global.kcDebug = vk_f1;
global.kcLights = ord("L");

global.kcPause = vk_escape;

// RESOLUTION
global.aspectRatio = [16, 9];

global.camResW = 640;
global.camResH = 360;

global.viewResW = 1280;
global.viewResH = 720;

room_goto(r01);