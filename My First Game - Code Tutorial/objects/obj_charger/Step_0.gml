//Shoot
if(mouse_check_button_pressed(mb_left)) && (magazin_pistol >= 1)
{

	magazin_pistol = magazin_pistol - 1;
}
if(mouse_check_button_pressed(mb_right)) && (magazin_shotgun >= 1)
{

	magazin_shotgun = magazin_shotgun - 1;
}
	
//Reload function	
if(keyboard_check_pressed(ord("R")))
{
	magazin_pistol = 0;
	magazin_shotgun = 0;
	audio_play_sound(snd_reload,2,0);
	alarm[0] = reload_time;	
}

