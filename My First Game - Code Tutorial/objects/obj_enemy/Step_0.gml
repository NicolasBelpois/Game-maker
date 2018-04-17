if (instance_exists(obj_player)) 
{
	
	mp_potential_step(obj_player.x,obj_player.y,spd,false);
}


if(sprite_index = spr_enemyshoot) && (cooldown < 1){
	inst = instance_create_layer(x,y,"bulletslayer",obj_enemybullet);
	inst.direction = point_direction(x,y,obj_player.x,obj_player.y);
	cooldown = room_speed * 2;
	speed = 0.5;
	hp = 15;

}

cooldown = cooldown -1;

image_angle = direction;


if(hp <= 0)
{
	
	with (obj_score)
	{ 
		global.thescore = global.thescore + 5;
		global.enemykill = global.enemykill + 1;
	}
	
	audio_sound_pitch(snd_death,random_range(0.8,1.2));
	audio_play_sound(snd_death,0,0);
	instance_change(obj_deadenemy,true);
	
}



