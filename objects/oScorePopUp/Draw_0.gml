var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

draw_set_font(fGame);

if (global.enemy1 == true){
	draw_text(oPlayer.x - 16, oPlayer.y - 24, " + " + string(global.enemy1score));
}
if (global.enemy2 == true){
	draw_text(oPlayer.x - 16, oPlayer.y - 24, " + " + string(global.enemy2score));
}

if (global.enemy3 = true){
	draw_text(oPlayer.x - 16, oPlayer.y - 24, " + " + string(global.enemy3Score));
}