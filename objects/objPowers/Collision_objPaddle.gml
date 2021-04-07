/// @description Player gets powerup

if (image_index == 0) {
	with (objPaddle) {
		image_xscale = 1.5;
		alarm[0] = 10 * room_speed; // 10 seconds
	}
} else if (image_index == 1) {
	with (objBall) {
		speed = ballSpeed;
	}
}

instance_destroy();