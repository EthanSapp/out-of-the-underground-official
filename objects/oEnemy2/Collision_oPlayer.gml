var _height = oPlayer.y - y;

if(global.playerState = playerStateFree){
	if (oPlayer.vsp > 0){
	
		if (_height <= 0){
			if (global.playerState = playerStateFree){
				oPlayer.vsp = -7;
			}
			audio_play_sound(sndJump, 1, false);
			instance_destroy(id);
			instance_create_layer(id.x, id.y, "Instances", oCoin);
			var randDrop = irandom_range(1, 4);
			if (randDrop == 1){
				instance_create_layer(id.x, id.y, "Instances", oPlayerHPBoost);
			}
			_score += 10;
			global.enemy2 = true;
			global.enemy1 = false;
			instance_create_layer(oPlayer.x , oPlayer.y + 18, "Instances", oScorePopUp);
		}
	}

	if (_height > 0){
		var col = oPlayer.x - x;

		if (col <= 0){
			alarm[0] = room_speed / 30;
			global.damage = true;
		}
	}

	if (_height > 0){
		var col = x - oPlayer.x;

		if (col <= 0){
			alarm[0] = room_speed / 30;
			global.damage = true;
		}
	}
}

if (global.playerState = playerStateFly){
	if (vsp2){
	
		if (_height <= 0){
			if (global.playerState = playerStateFree){
				oPlayer.vsp = -7;
			}
			audio_play_sound(sndJump, 1, false);
			instance_destroy(id);
			instance_create_layer(id.x, id.y, "Instances", oCoin);
			var randDrop = irandom_range(1, 4);
			if (randDrop == 1){
				instance_create_layer(id.x, id.y, "Instances", oPlayerHPBoost);
			}
			_score += 10;
			global.enemy2 = true;
			global.enemy1 = false;
			instance_create_layer(oPlayer.x , oPlayer.y + 18, "Instances", oScorePopUp);
		}
	}

	if (_height > 0){
		var col = oPlayer.x - x;

		if (col <= 0){
			alarm[0] = room_speed / 30;
			global.damage = true;
		}
	}

	if (_height > 0){
		var col = x - oPlayer.x;

		if (col <= 0){
			alarm[0] = room_speed / 30;
			global.damage = true;
		}
	}
}