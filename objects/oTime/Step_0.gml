global.timeCount -=1;

if (global.timeCount <= 0){
	global.time -= 1;
	global.timeCount = 120;
}

if (global.time <= 0){
	instance_destroy(oPlayer);
	room_restart();
	global.roomRestart = true;
}