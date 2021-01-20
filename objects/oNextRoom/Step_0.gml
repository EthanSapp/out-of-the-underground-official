if (instance_exists(oPlayer)) && (position_meeting(oPlayer.x + 15, oPlayer.y, id)){
	global.targetRoom = targetRoom;
	global.targetX = targetX;
	global.targetY = targetY;
	global.targetDirection = oPlayer.direction;
	room_goto(targetRoom);
	lastCoins = coins;
	instance_destroy();
}