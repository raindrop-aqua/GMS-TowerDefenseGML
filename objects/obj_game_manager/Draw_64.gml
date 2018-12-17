
draw_set_font(fnt_main);
draw_set_color(c_white);

var px = 640 + 8;

// WAVEの描画
draw_text(px,  8, "WAVE : " + string(wave));

// 所持金額の描画
draw_text(px, 24, "MONEY: $" + string(scr_money_get()));

// ライフの描画
with (obj_heart) {
	for (var loop=0; loop < lives; loop++) {
		var spr_width = 32;
		var offset = spr_width * loop;
		draw_sprite(spr_heart, 0, 648 + offset, 40);
	}
}

// ゲームオーバーの追加
if (state_wave == GAME_WAVE_STATE.GAME_OVER) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	var text = "GAME OVER";
	var scale = 3;
	var px = 320;
	var py = 240;

	draw_set_font(fnt_main);
	draw_set_color(c_black);
	draw_text_transformed(px + 2, py + 2, text, scale, scale, 0);
	draw_set_color(c_white);
	draw_text_transformed(px    , py    , text, scale, scale, 0);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
