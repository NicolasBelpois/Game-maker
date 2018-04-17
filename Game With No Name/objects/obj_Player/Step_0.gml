if(hascontrol)
{
	//Player input
	key_left = keyboard_check(ord("Q")) || keyboard_check(vk_left) ;
	key_right = keyboard_check(ord("D"))|| keyboard_check(vk_right) ;
	key_jump = keyboard_check(vk_space) || keyboard_check(vk_up);
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}



//Calculated mouvement
var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv; 

if(place_meeting(x,y+1,obj_Wall)) && (key_jump)
{
	vsp = - 7;
}


//Horizontal collision
if(place_meeting(x+hsp,y,obj_Wall)) 
{
	while(!place_meeting(x+sign(hsp),y,obj_Wall)) 
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp; 

//Vertical collision
if(place_meeting(x,y+vsp,obj_Wall))
{
	while(!place_meeting(x,y+sign(vsp),obj_Wall)) 
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp; 

//Animation
if(!place_meeting(x,y+1,obj_Wall))
{
	sprite_index = spr_PlayerA;
	image_speed = 0; 
	if(sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	if(sprite_index = spr_PlayerA)
	{
		audio_sound_pitch(snd_Landing,choose(0.8,1.0,1.2));
		audio_play_sound(snd_Landing,1,false);
	}
	image_speed = 1;
	if(hsp == 0)
	{
		 sprite_index = spr_Player;
	}
	else
	{	
		sprite_index = spr_PlayerRR;
	}
	if(mouse_check_button(mb_left))
	{
		sprite_index = spr_PlayerRS;
	}
}


if(hsp != 0) image_xscale = sign(hsp);

if(!place_meeting(obj_Player.x,obj_Player.y,obj_SignBad)) && (!place_meeting(obj_Player.x,obj_Player.y,obj_SignGood)) 
{
	global.collision = false; 
}