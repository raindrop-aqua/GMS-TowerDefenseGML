
draw_set_font(fnt_main);
draw_set_color(c_white);

var px = 640 + 8;

draw_text(px,  8, "WAVE : " + string(wave));
draw_text(px, 24, "MONEY: $" + string(scr_money_get()));
