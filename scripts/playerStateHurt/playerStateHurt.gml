// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateHurt(){
	hspd = -hspd
	//vspd = lengthdir_y(speedHit, direction - 180);
	
	moveDistanceRemaing = max(0, moveDistanceRemaing - speedHit);
	
	_collided = true;
	
	sprite_index = sPlayerHurt;
	image_index = 0;
	
	moveDistanceRemaing = distanceRecoil;
	
	z = sin(((moveDistanceRemaing / distanceRecoil) * pi)) * distanceRecoilHeight;
	
	if (moveDistanceRemaing <= 0){
		state = playerStateFree;
	}
}