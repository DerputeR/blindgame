/// @description
draw_set_font(uiTitle);
draw_set_alpha(alpha);
draw_set_color($ffffff);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x + (w/2), y + (h/2), text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// RESET COLOR
draw_set_font(uiText);
draw_set_color(c_white);