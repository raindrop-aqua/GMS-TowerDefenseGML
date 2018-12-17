
switch (state_wave) {
	case GAME_WAVE_STATE.WAIT:
		interval_wave--;
		if (interval_wave < 1) {
			number_of_remaining_enemies = 6;
			rate_spawn = 60;
			interval_spawn = 0;
			state_wave = GAME_WAVE_STATE.MAIN;
		}
		break;
	case GAME_WAVE_STATE.MAIN:
		// メイン処理を呼び出し
		scr_game_manager_step_main();
		break;
}

