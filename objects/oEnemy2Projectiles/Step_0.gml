vspd = vsp + grav
move_towards_point(oPlayer.x, oPlayer.y, 1);

if (place_meeting(x, y + vspd, oWall)){
		while ( !place_meeting(x, y + sign(vspd), oWall)){
			y += sign(vspd);
		}
		vspd = 0;
		instance_destroy(id);
	}


y += vspd;

