/// @description Ball to Brick

move_bounce_all(true);

global.playerScore += 2;	
if (speed < 12) speed += ballSpeedModifier;

instance_destroy(other);/// @description Insert description here