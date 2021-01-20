if (playerHP < 3){
	playerHP += 1;
}

if (playerHP >= 3){
	coins += 1;
}

audio_play_sound(sndCoinPickup, 2, false);

instance_destroy();