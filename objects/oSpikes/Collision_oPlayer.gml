var height = oPlayer.y - y;


if(global.playerState = playerStateFree){
	if (oPlayer.vsp > 0){
		if (height <= 0){
			oPlayer.vsp = -4;
			with(other){
				playerHP -= 1;
				instance_create_layer(oPlayer.x  - 3, oPlayer.y + 18, "Instances", oDamagePopUp);
			}
		}
	}
}

if (global.playerState = playerStateFly){
	if (oPlayer.vsp > 0){
		if (height <= 0){
			oPlayer.vsp = -4;
			with(other){
				playerHP -= 1;
				instance_create_layer(oPlayer.x  - 3, oPlayer.y + 18, "Instances", oDamagePopUp);
			}
		}
	}
}