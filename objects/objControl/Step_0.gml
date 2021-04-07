/// @description Game logic

if (instance_number(objBall) <= 0) {
	room_restart();
}

if (gameover) {
	if (keyboard_check_pressed(vk_anykey)) {
		room_restart();
		global.playerScore = 0;
		global.playerLives = 3;
	}
}