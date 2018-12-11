
// インターバルタイマー更新
interval_spawn++;

// 敵が残っているかどうかを判断
// 敵出現間隔が満たされたかどうかを判断
if (number_of_remaining_enemies > 0 and interval_spawn >= rate_spawn) {
	// 敵出現
	instance_create_layer(0, 0, "Instances", obj_enemy);
	
	// 残敵数を更新
	number_of_remaining_enemies--;
	// インターバルタイマーをリセット
	interval_spawn = 0;
}