if (instance_exists(obj_player)) 
{
	
	mp_potential_step(obj_player.x,obj_player.y,spd,false);
}





image_angle = direction;


if(hp <= 0)
{
	
	
	audio_sound_pitch(snd_death,random_range(0.8,1.2));
	audio_play_sound(snd_death,0,0);
	instance_change(obj_deadenemy,true);
	
}



