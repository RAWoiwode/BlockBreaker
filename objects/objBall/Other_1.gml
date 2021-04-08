/// @description Game boundary logic

if (bbox_left < 0 || bbox_right > room_width) {
	x = clamp(x, sprite_xoffset, room_width - sprite_xoffset);
	hspeed *= -1;
}

if (bbox_top < 0) {
	y = clamp(y, sprite_yoffset, room_height - sprite_yoffset);
	vspeed *= -1;
}

if (bbox_bottom > room_height) {
	global.playerLives -= 1;
	instance_destroy();
	
	if (global.playerLives <= 0) {
		objControl.gameover = true;
		if (global.playerScore > global.highScore) global.highScore = global.playerScore;
	} else {
		// Destroy ball and set it back on paddle
		instance_create_layer(objPaddle.x, objPaddle.y, "Instances", objBall);
	}
}