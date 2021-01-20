// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scriptEnemy3Free(){
	diveSpeed = 0;
	
	hspeed_ = hspd;
	
	x += hspeed_
	
	diveDelay -= 1;

	if (diveDelay <= 0){
		enemy3State = scriptEnemy3Dive;
		diveDelay = 300;
	}
	
	
	
}