/// @desc カーソルの描画
// UI領域は範囲外
if (cursor_x > 640) {
	exit;
}

// カーソルの外枠描画
draw_set_color(c_red);
var x1 = cursor_x - global.GRID_SIZE / 2;
var y1 = cursor_y - global.GRID_SIZE / 2;
var x2 = x1 + global.GRID_SIZE;
var y2 = y1 + global.GRID_SIZE;
draw_rectangle(x1, y1, x2, y2, true);

// 砲台をうすく描画（配置予定を示す）
if (cursor_obj != noone) {
	exit;
}

draw_set_alpha(0.3);
draw_sprite(spr_infantry, 0, cursor_x, cursor_y);
draw_set_alpha(1.0);


