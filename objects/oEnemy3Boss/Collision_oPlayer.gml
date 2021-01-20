var _height = oPlayer.y - y;
if (oPlayer.vsp > 0){
	
	if (_height <= 0){
		oPlayer.vsp = -7;
		//instance_destroy(id);
		instance_create_layer(id.x, id.y, "Instances", oCoin);
		global.enemy3HP -= 1;
		_score += 15;
		global.enemy3 = true
		global.enemy2 = false;
		global.enemy1 = false;
		instance_create_layer(oPlayer.x , oPlayer.y + 18, "Instances", oScorePopUp);
	}
}

if (_height > 0){
	var col = oPlayer.x - x;

	if (col <= 0){
		alarm[0] = room_speed / 30;
		global.damage = true;
		dive = false;
	}
}

if (_height > 0){
	var col = x - oPlayer.x;

	if (col <= 0){
		alarm[0] = room_speed / 30;
		global.damage = true;
		dive = false;
	}
}


//attackCounter -= 1;

//if (attackCounter <= 0){
//	alarm[0] = room_speed / 30;
//		global.damage = true;
//		dive = false;
//}
