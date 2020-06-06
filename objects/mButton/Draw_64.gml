/// @description
draw_set_font(uiText);
draw_set_alpha(alpha);
if (!enabled) draw_set_color($171717);
else draw_set_color(merge_color($3b3b3b, $ffffff, hover));
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x + (w/2), y + (h/2), text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// RESET COLOR
draw_set_color(c_white);