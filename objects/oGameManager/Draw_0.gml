var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

if (room != rLevel1End && room != rTitles && room != rLevel5End && room != rEnd && room != rLevel2End && room != rLevel3End && room != rLevel4End){
	draw_sprite(sHUD, noone, cx + 660, cy + 64);
	
	draw_set_font(fGame);
	draw_set_color(c_white)
	
	draw_sprite(sFlyBoost, noone, cx + 550, cy + 0);
	image_speed = 0.1;
	if (global.playerState = playerStateFly){
		draw_text(cx + 558, cy + 32,string(global.flyCountDown));
	}
	
	if (global.flyDelay > 0){
		draw_set_color(c_red);
		draw_text(cx + 425, cy + 13,"Ability ready in: " +   string(global.flyDelay));
	} else if(global.flyDelay <= 0 && global.playerState = playerStateFree){
		draw_set_color(c_green);
		draw_text(cx + 520, cy + 13, "Ready");
	}
	
	draw_set_color(c_white);
	draw_text(cx + 680, cy + 8, "HP: ");

	draw_text(cx + 600, cy + 8, "SCORE: " + string(_score));



	draw_text(cx + 660, cy + 28, "COINS: " + string(coins));
	
	draw_text(cx + 600, cy + 46, "LIVES: " + string(playerlives));
	
	if (playerHP == 4){
		draw_sprite(sShield, noone, cx + 708, cy + 24);
	} else if (playerHP == 3){
		draw_sprite(sPlayerHPFull, noone, cx + 700, cy + 8);
	} else if(playerHP = 2){
		draw_sprite(sPlayerHPTwoThirds, noone, cx + 700, cy + 8);
	} else if(playerHP = 1){
		draw_sprite(sPlayerHPOneThird, noone, cx + 700, cy + 8);
	} else if(playerHP = 0){
		draw_sprite(sPlayerHPNone, noone, cx + 700, cy + 8);
	}
}

if (room = rLevel1End){
	draw_set_font(fGame);
	
	draw_text((room_width / 2) - 64, room_height / 2, "You passed level 1!");
}

if (room = rLevel1){
	draw_set_font(fGame);
	
	draw_text(x + 160, y + 32, "Level 1");
}

if (room = rBoss1){
	draw_set_font(fGame);
	
	draw_text(x + 160, y + 32, "Boss 1");
}

if (room = rLevel5){
	draw_set_font(fGame);
	draw_text(x + 255, y + 100, "Level 5");
	//draw_text(x + 255, y - 1281, "Level 2");
}


if (room = rBoss2){
	draw_set_font(fGame);
	draw_text(x + 365, y + 32, "Boss 2");
	//draw_text(x + 365, y + 64, "Time Remaining: " + string(level2BossTimeMain));
	//draw_text(x + 255, y - 1281, "Level 2");
}

if (room = rTitles){
	draw_set_font(fTitles);
	draw_set_color(c_red);
	draw_text(room_width / 2 - 256, room_height / 2 - 256, "OUT OF THE UNDERGROUND");
	draw_set_font(fTitles2);
	draw_set_color(c_white);
	draw_text(room_width / 2 - 194, room_height / 2 - 128, "CREATED BY ETHAN SAPP");
	draw_text(room_width / 2 - 128, room_height / 2 - 64, "> CONTROLS <");
	draw_set_color(c_blue);
	draw_text(room_width / 2 - 160, room_height / 2 , "A AND D TO MOVE");
	draw_text(room_width / 2 - 100, room_height / 2 + 64, "W TO JUMP");
	draw_set_color(c_red);
	draw_text(room_width / 2 - 194, room_height / 2 + 128, "PRESS ENTER TO PLAY");
}

if (room = rLevel5End){
	draw_set_font(fGame);
	
	draw_text((room_width / 2) - 64, room_height / 2, "You passed level 5!");
}

if (room = rEnd){
	draw_set_font(fTitles);
	draw_set_color(c_red);
	draw_text((room_width / 2) - 128, (room_height / 2) - 64, "GAME OVER\n");
	draw_set_color(c_white);
	draw_text((room_width / 2) - 272, (room_height / 2), "Press enter to restart!")
}