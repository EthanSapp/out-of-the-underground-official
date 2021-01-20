var height = y - id.y;

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

if (global.playerState = playerStateFree){
	if (vsp > 0){
	
		if (height <= 0){
			if (global.playerState = playerStateFree){
				vsp = -7;
			}
			audio_play_sound(sndJump, 1, false);
			with(other){
				instance_destroy(id);
				_score += 5;
				global.enemy1 = true;
				global.enemy2 = false;
				instance_create_layer(id.x, id.y, "Instances", oCoin);
				var randDrop =irandom_range(1, 4);
				if (randDrop == 1){
				instance_create_layer(id.x, id.y, "Instances", oPlayerHPBoost);
			}
				instance_create_layer(oPlayer.x  - 3, oPlayer.y + 18, "Instances", oScorePopUp);
			}
		}
	}
}
if (global.playerState = playerStateFly){
	if (vsp2 > 0){
		if (height <= 0){
			if (global.playerState = playerStateFree){
				vsp = -7;
			}
			audio_play_sound(sndJump, 1, false);
			with(other){
				instance_destroy(id);
				_score += 5;
				global.enemy1 = true;
				global.enemy2 = false;
				instance_create_layer(id.x, id.y, "Instances", oCoin);
				var randDrop =irandom_range(1, 4);
				if (randDrop == 1){
				instance_create_layer(id.x, id.y, "Instances", oPlayerHPBoost);
			}
				instance_create_layer(oPlayer.x  - 3, oPlayer.y + 18, "Instances", oScorePopUp);
			}
		}
	}
}
