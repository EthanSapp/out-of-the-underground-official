// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scriptEnemy3Dive(){
	diveSpeed = 5;
		move_towards_point(oPlayer.x, oPlayer.y, diveSpeed);
		dive = true;
		diveDelay = 300;
		diveStopTime -= 1;
		
		if (diveStopTime <= 0){
			enemy3State = scriptEnemy3Free;
			hspd = -hspd
			move_towards_point(oPlayer.x, oPlayer.y, 0);
			diveSpeed = 0;
			diveStopTime = 60;
		}
}