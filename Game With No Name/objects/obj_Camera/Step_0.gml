//Update destination
if(instance_exists(follow))
{
	xto = follow.x;
	yto = follow.y;
	if((follow).object_index == obj_Player_dead)
	{
		x = xto;
		y = yto;
	}
}
//Update object position
x += (xto - x) / 25;
y += (yto - y) / 25;

//Keep camera inside the room
x = clamp(x,view_w_half,room_width - view_w_half);
y = clamp(y,view_h_half,room_height - view_h_half);

//Shake the camera
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude)); 

//Updtate camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

//Background mouving
if(layer_exists("bg_Mountain"))
{
	layer_x("bg_Mountain",x/2);
}
if(layer_exists("bg_Tree"))
{
	layer_x("bg_Tree",x/4);
}
