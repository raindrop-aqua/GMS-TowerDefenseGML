if (visible == false) {
	exit;
}

var mx = mouse_x;
var my = mouse_y;
if (enabled and point_in_rectangle(mx, my, x, y, x + width, y + height)) {
	if (mouse_check_button(mb_left)) {
		if (mouse_check_button_pressed(mb_left)) {
			event_perform(ev_other, ev_user0);
		}
		// クリックしている状態
		state = 2;
	} else {
		if (state == 2) {
			event_perform(ev_other, ev_user1);
		}
		// ボタンの上にマウスカーソルが乗っている状態
		state = 1;
	}
} else {
	// 通常状態
	state = 0;
}

