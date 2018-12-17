
switch (state_wave) {
	case GAME_WAVE_STATE.WAIT:
		interval_wave--;
		if (interval_wave < 1) {
			// 敵出現数の設定
			number_of_remaining_enemies = scr_enemy_get_number_of_remaining_enemies(wave);
			// 敵生成インターバル
			rate_spawn = scr_enemy_get_rate_spawn(wave);
			interval_spawn = 0;
			
			with (instance_create_layer(-80, 0, "Instances", obj_wave)) {
				wave = other.wave;
			}
			
			state_wave = GAME_WAVE_STATE.MAIN;
		}
		break;
	case GAME_WAVE_STATE.MAIN:
		// メイン処理を呼び出し
		scr_game_manager_step_main();
		break;
	case GAME_WAVE_STATE.GAME_OVER:
		if (mouse_check_button_pressed(mb_left)) {
			game_restart();
		}
		break;
}

