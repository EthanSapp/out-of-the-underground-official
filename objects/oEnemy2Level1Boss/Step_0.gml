	hspeed_ = hspd;
	//vspeed_ = vspd + grav
	
x += hspeed_

//dropDelay = 10;

if (room = rBoss1 && enemy2Level1BossHP != 0){
	instance_deactivate_object(oNextRoom);
	instance_deactivate_object(oDoor);
	instance_deactivate_object(oCoin);
}
		
if (enemy2Level1BossHP <= 0){
	instance_destroy();
	hspd = 0;
	//room_goto(rLevel1End);
	instance_activate_object(oDoor);
	instance_activate_object(oNextRoom);
	instance_activate_object(oCoin);
	_score += 100;
}

if (dropDelay <= 0){
	instance_create_layer(id.x, id.y, "Instances", oEnemy2Projectiles);
	dropDelay = 200;
}
dropDelay -= 1;

