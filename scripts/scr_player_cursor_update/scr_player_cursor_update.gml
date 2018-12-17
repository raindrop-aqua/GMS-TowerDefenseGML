/// @desc カーソル情報を更新する
// Gridサイズにスナップする
var size = global.GRID_SIZE;
cursor_x = floor(mouse_x / size) * size;
cursor_y = floor(mouse_y / size) * size;
cursor_x += size / 2;
cursor_y += size / 2;

// カーソル位置のオブジェクトを取得する
cursor_obj = collision_point(cursor_x, cursor_y, all, false, false);
// 何かがすでに配置されている場合は置くことができない
if (cursor_obj != noone) {
	return 0;
}

// 購入モードでなければ配置できない
if (scr_shop_get_state() != SHOP_STATE.BUY) {
	return 0;
}

// 配置可能領域を判定する
// UI領域には配置できない
if (cursor_x > 640) {
	return 0;
}

// クリックで配置
if (mouse_check_button_pressed(mb_left) == false) {
	return 0;
}

// 配置した場合はお金を減らす
scr_money_use(scr_shop_infantry_cost_get());

// 配置
instance_create_layer(cursor_x, cursor_y, "Instances", obj_infantry);

// 購入モードの判定
if (scr_money_get() < scr_shop_infantry_cost_get()) {
	scr_shop_change_state(SHOP_STATE.NONE);	
}
