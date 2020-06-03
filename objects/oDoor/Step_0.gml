/// @description Insert description here
// You can write your code in this editor

if (position_meeting(mouse_x, mouse_y, self))
{
	if (mouse_check_button_pressed(global.kcAttack) && !self.locked && !self.opened)
	{
		self.opened = true;
		self.image_angle-=90;
		self.solid=false;
	}
}