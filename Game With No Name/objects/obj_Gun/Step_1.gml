
if(instance_exists(obj_Dummy))
{
	x = obj_Dummy.x;
	y = obj_Dummy.y+10;
}
else
{
	x = obj_Player.x;
	y = obj_Player.y+10;
}






	image_angle = point_direction(x,y,mouse_x,mouse_y);


firingdelay = firingdelay - 1;
recoil = max(0, recoil - 1);

if(mouse_check_button(mb_left) || gamepad_button_check(0,gp_shoulderrb)) && (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 10;
	scr_Screenshake(2,10);
	audio_play_sound(snd_Shots,5,false);
	with(instance_create_layer(x,y,"Bullets",obj_Bullet))
	{
		speed = 25; 
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
	
}

x = x - lengthdir_x(recoil,image_angle)
y = y - lengthdir_y(recoil,image_angle)

if(image_angle > 90) && (image_angle < 270)
{
	image_yscale = - 1;	
}
else
{
	image_yscale = 1;
}