hsp = 3;
vsp = -4;
grv = 0.2;
done = 0;


image_speed = 0;
image_index = 0;

scr_Screenshake(6,60);
audio_play_sound(snd_Death,10,false);

game_set_speed(30,gamespeed_fps);
with(obj_Camera) follow = other.id;