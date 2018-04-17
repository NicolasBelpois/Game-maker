
draw_set_font(fnt_timer)
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
draw_text(cx+50,cy+70,"TIME: " + string(global.timer/room_speed));


	
	


