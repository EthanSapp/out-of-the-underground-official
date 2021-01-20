	hspeed_ = hspd;
	//vspeed_ = vspd + grav
	
x += hspeed_

//dropDelay = 10;
		
if (enemy2HP <= 0){
	sprite_index = sEnemy2Dead;
	hspd = 0;
	instance_create_layer(id.x, id.y, "Instances", oCoin);
}

if (dropDelay <= 0){
	instance_create_layer(id.x, id.y, "Instances", oEnemy2Projectiles);
	dropDelay = 300;
	audio_play_sound(sndEnemy2Shoot, 1, false);
}
dropDelay -= 1;