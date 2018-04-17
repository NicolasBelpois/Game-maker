
	//Player input
	key_left =  keyboard_check(vk_left) ;
	key_right =  keyboard_check(vk_right) ;
	key_jump =  keyboard_check(vk_up);





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
	sprite_index = spr_Combat_Player_A2;
	image_speed = 0; 
	if(sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	if(sprite_index = spr_Combat_Player_A2)
	{
		audio_sound_pitch(snd_Landing,choose(0.8,1.0,1.2));
		audio_play_sound(snd_Landing,1,false);
	}
	image_speed = 1;
	if(hsp == 0)
	{
		 sprite_index = spr_Combat_Player2;
	}
	else
	{	
		sprite_index = spr_Combat_Player_R2;
	}
	
}
if(hsp != 0) image_xscale = sign(hsp);
