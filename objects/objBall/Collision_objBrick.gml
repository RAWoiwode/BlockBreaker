/// @description Ball to Brick

move_bounce_all(true);
//direction = point_direction(other.x, other.y, x, y);

global.playerScore += 15;
if (speed < 12) speed += 0.01;


instance_destroy(other);