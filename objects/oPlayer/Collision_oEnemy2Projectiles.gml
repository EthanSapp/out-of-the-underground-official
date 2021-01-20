playerHP -=1;
with(other){
	instance_destroy(id);
}
instance_create_layer(oPlayer.x , oPlayer.y + 18, "Instances", oDamagePopUp);