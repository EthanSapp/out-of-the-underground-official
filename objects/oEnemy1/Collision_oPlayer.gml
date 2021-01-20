hspd = -hspd
var height = oPlayer.y - y;
if (height > 0){
	var col = oPlayer.x - x;

	if (col <= 0){
		alarm[0] = room_speed / 30;
		global.damage = true;
	}
}

if (height > 0){
	var col = x - oPlayer.x;

	if (col <= 0){
		alarm[0] = room_speed / 30;
		global.damage = true;
	}
}