vspd = vsp + grav

if (place_meeting(x, y + vspd, oWall)){
		while ( !place_meeting(x, y + sign(vspd), oWall)){
			y += sign(vspd);
		}
		vspd = 0;
	}


y += vspd;
