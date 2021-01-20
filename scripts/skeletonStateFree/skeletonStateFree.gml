// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyStateFree(){
	var dir_ = point_direction(x, y, oPlayer.x, oPlayer.y);

	hspeed_ = lengthdir_x(spd, dir_);
		vspeed_ = spd + grav
	if (distance_to_object(oPlayer) <= 100 && distance_to_object(oPlayer) > 5){
	


		if (place_meeting(x + hspeed_, y, oWall)){
			while (!place_meeting(x + sign(hspeed_), y, oWall)){
				x += sign(hspeed_);
			}
			hspeed_ = 0;
		}

		x += hspeed_;

		if (hspeed_ > 0){
			sprite_index = sSkeletonWalk;
			image_xscale = 1;
			image_speed = 1;
		} else if (hspeed_ < 0){
			sprite_index = sSkeletonWalk;
			image_xscale = -1;
			image_speed = 1;
		} else if(hspeed_ == 0){
			sprite_index = sSkeletonIdle;
			image_speed = 1;
		}

	}

		if (!place_meeting(x, y + vspeed_, oWall)){
			while ( !place_meeting(x, y + sign(vspeed_), oWall)){
				y += sign(vspeed_);
			}
			vspeed_ = 0;
		}
}