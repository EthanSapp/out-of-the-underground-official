var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);



if (room != rLevel1End && room != rTitles && room != rLevel5End && room != rEnd && room != rLevel2End && room != rLevel3End && room != rLevel4End){
	draw_set_font(fGame);
	draw_set_color(c_white);
	draw_text(cx + 600, cy + 28, "TIME: " + string(global.time));
}