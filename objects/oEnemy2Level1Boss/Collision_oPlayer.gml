var _height = oPlayer.y - (y + 80);

if(global.playerState = playerStateFree){
	if (oPlayer.vsp > 0){
	
		if (_height <= 0){
			if (global.playerState = playerStateFree){
				oPlayer.vsp = -7;
			}
			audio_play_sound(sndJump, 1, false);
			enemy2Level1BossHP -= 1;
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
	if (vsp2 > 0){
	
		if (_height <= 0){
			if (global.playerState = playerStateFree){
				oPlayer.vsp = -7;
			}
			audio_play_sound(sndJump, 1, false);
			enemy2Level1BossHP -= 1;
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
