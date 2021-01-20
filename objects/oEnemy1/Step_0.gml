

	hspeed_ = hspd;
	vspeed_ = vspd + grav
	
x += hspeed_

	

		if (!place_meeting(x, y + vspeed_, oWall)){
			while ( !place_meeting(x, y + sign(vspeed_), oWall)){
				y += vspeed_;
			}
			vspeed_ = 0;
		}
		

		
if (enemyHP <= 0){
	sprite_index = sEnemy1Dead;
	hspd = 0;
	vspd = 0;
	
}

