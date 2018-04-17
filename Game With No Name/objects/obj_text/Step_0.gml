/// @description Progresse text

letters += spd_txt;
text_current = string_copy(text,1,floor(letters));

draw_set_font(fnt_Text); 
if (h == 0) h = string_height(text);

w = string_width(text_current);


//destroy when done

if(global.collision == false) 
{
	instance_destroy();
	with(obj_Camera) follow = obj_Player;
}