keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyJump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));

keyActivate = keyboard_check(ord("E"));

if (!global.paused){
	script_execute(global.playerState);
}

if (playerHP <= 0){
	room_restart();
	global.roomRestart = true;
	playerlives -= 1;
} else {
	global.roomRestart = false;
}


