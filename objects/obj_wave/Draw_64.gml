draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var text = "WAVE " + string(wave);
var scale = 3;

draw_set_font(fnt_main);
draw_set_color(c_black);
draw_text_transformed(x + 2, y + 2, text, scale, scale, 0);
draw_set_color(c_white);
draw_text_transformed(x    , y    , text, scale, scale, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
