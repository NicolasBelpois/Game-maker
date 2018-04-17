draw_set_font(fnt_magazin)

if(magazin_pistol >= 5) draw_text_color(obj_player.x,obj_player.y+40,string(magazin_pistol),c_orange,c_orange,c_orange,c_orange,1);

if(magazin_pistol < 5 ) draw_text_color(obj_player.x,obj_player.y+40,string(magazin_pistol),c_red,c_red,c_red,c_red,1);




if(magazin_shotgun >= 3) draw_text_color(obj_player.x-40,obj_player.y+40,string(magazin_shotgun),c_orange,c_orange,c_orange,c_orange,1);

if(magazin_shotgun < 3 ) draw_text_color(obj_player.x-40,obj_player.y+40,string(magazin_shotgun),c_red,c_red,c_red,c_red,1);

if((magazin_pistol <= 0) || (magazin_shotgun <= 0))
{
	
	draw_text_color(obj_player.x,obj_player.y-40,"Press 'R' To Reload",c_red,c_red,c_red,c_red,1);
	
}