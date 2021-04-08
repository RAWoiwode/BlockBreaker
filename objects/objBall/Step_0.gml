/// @description Ball Logic

// Keep ball on paddle, if not launched yet
if (!go) {
	x = objPaddle.x;
}

// Make sure ball doesn't get stuck bouncing side to side
if (direction < 183 && direction > 180) {
	direction += 0.01;
} else if (direction > 177 && direction <= 180) {
	direction -= 0.01;
} else if (direction < 3 && direction >= 0) {
	direction += 0.01;
} else if (direction > 356 && direction <= 359) {
	direction -= 0.01;
}