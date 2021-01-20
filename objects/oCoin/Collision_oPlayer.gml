coins += 1;
instance_destroy(id);

instance_create_layer(oPlayer.x , oPlayer.y + 18, "Instances", oGainPopUp);
audio_play_sound(sndCoinPickup, 2, false);