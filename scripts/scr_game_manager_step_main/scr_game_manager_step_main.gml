
// インターバルタイマー更新
interval_spawn++;

// 敵が残っているかどうかを判断
// 敵出現間隔が満たされたかどうかを判断
if (number_of_remaining_enemies > 0 and interval_spawn >= rate_spawn) {
	// 敵出現
	scr_enemy_spawn(wave);
	
	// 残敵数を更新
	number_of_remaining_enemies--;
	// インターバルタイマーをリセット
	interval_spawn -= rate_spawn;
}

// WAVEクリア判定：すべて敵を倒したかどうか
if (number_of_remaining_enemies <= 0 and instance_number(obj_enemy) == 0) {
	obj_game_manager.wave++;
	obj_game_manager.state_wave = GAME_WAVE_STATE.WAIT;
	obj_game_manager.interval_wave = 2 * 60;
}