/// @description Initializers

global.debug = false;

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

global.kcPause = vk_escape;

// GLOBAL TICKS
global.physAccumulator = 0;
global.physTick = 0;

room_goto(r0);