switch (state) {
	case 0:
		state = 1;
		interval = 60;
		x = -80;
		y = room_height / 2;
		break;
	case 1:
		interval *= 0.9;
		x = 320 - 400 * (interval / 60);
		if (interval < 1) {
			interval = 60 * 1;
			state = 2;
		}
		break;
	case 2:
		interval--;
		if (interval < 1) {
			state = 3;
			hspeed = 0;
		}
		break;
	case 3:
		hspeed += 0.5;
		if (x > room_width) {
			instance_destroy();
		}
		break;
}