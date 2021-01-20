// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateFree(){
	var move = (keyRight - keyLeft);

	hsp = move * spd;

	vsp = vsp + grav;
	
	//if(keyboard_check_pressed(ord("E"))){
	//	global.playerState = playerStateFly;
	//	vsp = 0;
	//	hsp = 0;
	//}
	
	global.seconds -= 1;
	if (global.seconds <= 0){
		global.flyDelay -= 1;
		global.seconds = 60;
		if (global.flyDelay <= 0){	
			ableToFly = true;
		}
	}
	
	if (ableToFly = true && keyActivate){
		global.playerState = playerStateFly;
		vsp = 0;
		hsp = 0;
	}
	if (place_meeting(x, y + 1, oWall) && keyJump){
		//global.playerState = playerStateJump;
		vsp = -8;
		audio_play_sound(sndJump, 1, false);
	}

	if (place_meeting(x + hsp, y, oWall)){
		while(!place_meeting(x + sign(hsp), y, oWall)){
			x += sign(hsp)
		}
		hsp = 0;
	}
	
	if (place_meeting(x + hsp, y, oSpikes)){
		while(!place_meeting(x + sign(hsp), y, oSpikes)){
			x += sign(hsp)
		}
		hsp = 0;
	}

	if (place_meeting(x, y + vsp, oWall)){
		while(!place_meeting(x, y + sign(vsp), oWall)){
			y += sign(vsp)
		}
		vsp = 0;
	}

	y += vsp

	hsp += xvel;
 
	x += hsp;
	
	xvel = lerp(xvel, 0, 1);

	if (hsp > 0){
		sprite_index = sPlayerRun;
		image_xscale = 1;
	} else if (hsp < 0){
		sprite_index = sPlayerRun;
		image_xscale = -1;
	} else if (vsp < 0){
		sprite_index = sPlayerJump;
	} else {
		sprite_index = sPlayerIdle;
	}

}