// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateJump(){
	if (sprite_index != sPlayerJump){
		sprite_index = sPlayerJump
		image_index = 0;
	}
	
	var _totalFrames = sprite_get_number(sprite_index);
	
	if (image_index >= _totalFrames){
		animationEnd = true;
	} else {
		animationEnd = false;
		
	}
	
	if (animationEnd = true){
		global.playerState = playerStateFree;
		animationEnd = false;
	}
	
	
}