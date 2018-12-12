// 元の色を保持
var c_prev = draw_get_color();

var c_background = color;
var offset_y = 0;

switch (state) {
	case 0:
		break;
	case 1:
		c = merge_color(c_background, c_white, 0.4);
		break;
	case 2:
		offset_y += 2;
		break;
}

draw_set_color(c_background);

if (enabled) {
	var up = (state != 2);
	draw_button(x, y, x + width, y + height, up);
} else {
	// ボタン本体
	var c_background_disabled = merge_color(c_background, c_black, 0.5);
	draw_set_color(c_background_disabled);
	draw_rectangle(x, y, x + width, y + height, false);
	// ボタン周囲のフレーム
	var c_frame_disabled = merge_color(frame_color, c_black, 0.5);
	draw_set_color(c_frame_disabled);
	draw_rectangle(x, y, x + width, y + height, true);
}

if (label_font != noone) {
	draw_set_font(label_font);
}

draw_set_color(label_color);
var lx = x + width / 2;
var ly = y + height / 2;
lx -= string_width(label) / 2;
ly -= string_height(label) / 2;
ly += offset_y;	// クリック中は少し文字の位置を下げる

draw_text(lx, ly, label);

draw_set_color(c_prev);
