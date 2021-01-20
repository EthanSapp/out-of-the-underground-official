

if (room == rTitles){
	if (keyboard_check_pressed(vk_enter)){
		room_goto(rLevel1);
	}
}

if (keyboard_check_direct(vk_escape)){
	game_end();
} 

if (global.roomRestart = true){
	playerHP = 3;
	global.time = 300;
	global.playerState = playerStateFree;
	global.timeCount = 120;
	_score = lastScore;
	coins = lastCoins;
}

if (playerlives <= 0){
	room_goto(rEnd);
}
if (room = rEnd){
	audio_play_sound(sndGameOver, 1, true);
	if (keyboard_check_pressed(vk_enter)){
		game_restart();
	}
}

if (coins >= 50){
	playerlives += 1;
	coins = 0;
}