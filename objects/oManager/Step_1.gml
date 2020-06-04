/// @description Insert description here
// You can write your code in this editor

// DEBUG KEYS
if (global.debug && keyboard_check_pressed(ord("R"))) game_restart();
if (global.debug && keyboard_check_pressed(vk_space)) show_debug_message("\n/////////////////////");

if (global.debug && keyboard_check_pressed(ord("F"))) global.timeScale = 0.05;
if (global.debug && keyboard_check_released(ord("F"))) global.timeScale = 1.0;

if keyboard_check_pressed(global.kcDebug)
{
	global.debug = !global.debug;
	show_debug_overlay(global.debug);
	layer_set_visible("Brushes", global.debug);
}