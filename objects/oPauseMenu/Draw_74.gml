/// @description Black fade in/out

draw_set_color(c_black);
draw_set_alpha(0.5*alpha);
draw_rectangle(0, 0, w, h, false);

// RESET COLOR
draw_set_color(c_white);