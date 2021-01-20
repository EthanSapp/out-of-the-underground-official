var _height = oPlayer.y - y;
if (oPlayer.vsp > 0){
	if (_height <= 0){
		oPlayer.vsp = -12;
		audio_play_sound(sndJump, 2, false);
		//image_speed = 1;
	} 
} 
