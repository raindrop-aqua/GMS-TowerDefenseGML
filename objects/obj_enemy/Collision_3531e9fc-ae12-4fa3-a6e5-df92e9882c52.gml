// 弾を破壊
with (other) {
	instance_destroy();
}

// 弾が当たったら装甲がはがれる
hit_point -= other.damage;
// 一定以上の装甲がはがれたら破壊
if (hit_point <= 0) {
	// 破壊
	instance_destroy();
	// お金を増やす
	scr_money_add(prize);
}
