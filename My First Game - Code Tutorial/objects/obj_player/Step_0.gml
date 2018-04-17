//Mouvements
if keyboard_check(ord("D")){
	if(!place_meeting(x+5,y,obj_wall)){
		x+=5;
	}
}
if keyboard_check(ord("Q")){
	if(!place_meeting(x-5,y,obj_wall)){
		x-=5;
	}
}
if keyboard_check(ord("Z")){
	if(!place_meeting(x,y-5,obj_wall)){
		y-=5;
	}
} 
if keyboard_check(ord("S")){
	if(!place_meeting(x,y+5,obj_wall)){
		y+=5;
	}
} 





//Mouse direction
image_angle = point_direction(x,y,mouse_x,mouse_y);

//Shoot
if(mouse_check_button_pressed(mb_left)) && (magazin_pistol >= 1)
{
	
	instance_create_layer(x,y,"bulletsLayer",obj_bullet)
	audio_play_sound(snd_shoot,1,0);
	magazin_pistol = magazin_pistol - 1;
	global.shotfire = global.shotfire + 1;
	
}

if(mouse_check_button_pressed(mb_right)) && (magazin_shotgun >= 1)
{
	inst = instance_create_layer(x,y,"bulletsLayer",obj_bullet)
	with(inst){direction = direction+30}
	inst = instance_create_layer(x,y,"bulletsLayer",obj_bullet)
	with(inst){direction = direction+15}
	inst = instance_create_layer(x,y,"bulletsLayer",obj_bullet)
	with(inst){direction = direction+5}
	inst = instance_create_layer(x,y,"bulletsLayer",obj_bullet)
	with(inst){direction = direction-5}
	inst = instance_create_layer(x,y,"bulletsLayer",obj_bullet)
	with(inst){direction = direction-15}
	inst = instance_create_layer(x,y,"bulletsLayer",obj_bullet)
	with(inst){direction = direction-30}
	
	
	audio_play_sound(snd_shoot,1,0);
	magazin_shotgun = magazin_shotgun - 1;
	
}

//empty charger
if(magazin_pistol <= 0) && (mouse_check_button_pressed(mb_left))
{
	audio_play_sound(snd_empty,5,0);
}
if(magazin_shotgun <= 0) && (mouse_check_button_pressed(mb_right))
{
	audio_play_sound(snd_empty,5,0);
}
	
//Reload function	
if(keyboard_check_pressed(ord("R")))
{
	magazin_pistol = 0;
	audio_play_sound(snd_reload,2,0);
	alarm[0] = reload_time;	
}

