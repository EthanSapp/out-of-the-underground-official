if (global.enemy3HP <= 0){
	instance_destroy(id);
	instance_activate_object(oDoor);
	instance_activate_object(oNextRoom);
	instance_activate_object(oCoin);
	_score += 125;
}

script_execute(enemy3State);

if (room = rLevel2Boss && global.enemy3HP != 0){
	instance_deactivate_object(oNextRoom);
	instance_deactivate_object(oDoor);
	instance_deactivate_object(oCoin);
}

