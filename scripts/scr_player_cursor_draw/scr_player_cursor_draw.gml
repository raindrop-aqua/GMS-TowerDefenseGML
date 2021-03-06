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

// カーソル下に障害物がある場合は×を表示
if (cursor_obj != noone) {
	if (cursor_obj.object_index == obj_off) {
		draw_sprite(spr_off, 0, x1, y1);
	}
	exit;
}

// 購入モードでないときは描画しない
if (scr_shop_get_state() != SHOP_STATE.BUY) {
	exit;	
}

// 砲台をうすく描画（配置予定を示す）
draw_set_alpha(0.3);
draw_sprite(spr_infantry, 0, cursor_x, cursor_y);
draw_set_alpha(1.0);


