/// @description
draw_set_font(uiText);
draw_set_alpha(alpha);
draw_set_color($e6e6e6);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(x, y, text, 0.5, 0.5, 0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// RESET COLOR
draw_set_alpha(1);
draw_set_color(c_white);