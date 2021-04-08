/// @description Ball to Brick

move_bounce_all(true);
global.playerScore += 1;
if (speed < 12) speed += ballSpeedModifier;

instance_destroy(other);