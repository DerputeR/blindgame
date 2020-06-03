/// @description Insert description here
// You can write your code in this editor

// DEBUG KEYS
if keyboard_check_pressed(ord("R")) game_restart();
if keyboard_check_pressed(vk_space) show_debug_message("\n/////////////////////");

if keyboard_check_pressed(ord("F")) global.timeScale = 0.05;
if keyboard_check_released(ord("F")) global.timeScale = 1.0;