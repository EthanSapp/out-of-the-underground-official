// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateFly(){
	sprite_index = sPlayerFly;
	image_speed = 1;
	
	var move = (keyRight - keyLeft);

	hsp = move * spd;

	grv = 1.5;

	vspd = vsp + grv;
	
	vsp2 = 4;
	
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

	if (keyboard_check(ord("W")) && !place_meeting(x, y - (vsp2), oWall)){
		y -= vsp2;
	}
	
	if (place_meeting(x, y + vspd, oWall)){
		while ( !place_meeting(x, y + sign(vspd), oWall)){
			y += sign(vspd);
		}
		vspd = 0;
	}


 y += vspd;


	y += vsp

	//hsp += xvel;
 
	x += hsp;
	
	//xvel = lerp(xvel, 0, 1);
	

	
	if (global.playerState = playerStateFly){
		global.seconds--;
		if (global.seconds <= 0){
			global.flyCountDown -=1;
			global.seconds = 60;
		}
		if (global.flyCountDown <= 0){
			global.playerState = playerStateFree;
			global.flyCountDown = 10;
			global.flyDelay = 15;
		}
	}
	
}