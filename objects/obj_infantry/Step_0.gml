// インターバルタイマーを更新

if (interval_fire > 0) {
	interval_fire--;
}

// 一番近い敵を検出する
target = instance_nearest(x, y, obj_enemy);
if (target == noone) {
	exit;
}

// 一番近い敵との距離を計測
var distance = distance_to_object(target);
if (distance > range) {
	exit;
}

// 一番近い敵との角度を計測
var dir = point_direction(x, y, target.x, target.y);
var diff = angle_difference(dir, image_angle);
image_angle += diff * 0.2;

// 一番近い敵との射角を計測
var diff_shot = angle_difference(dir, image_angle);
if (abs(diff_shot) > 16) {
	exit;
}

// 弾の装填が済んだかを確認
if (interval_fire > 0) {
	exit;	
}
// 弾を撃つ
var tmp_enemy = target;
with (instance_create_layer(x, y, "Instances", obj_shot)) {
	// 弾の飛ぶ向きを設定
	direction = point_direction(x, y, tmp_enemy.x, tmp_enemy.y);
	// 弾の攻撃力を設定
	damage = other.damage;
}
// インターバルタイマーの値をリセット
interval_fire = rate_fire;
