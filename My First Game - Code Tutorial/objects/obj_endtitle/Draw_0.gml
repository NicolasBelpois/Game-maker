

draw_set_font(fnt_score);
draw_text_color(x-250,y-250,"Score final:"+string(global.thescore),c_red,c_red,c_red,c_red,1);
draw_text_color(x-250,y-100,"Shots Fired:"+string(global.shotfire),c_red,c_red,c_red,c_red,1);
draw_text_color(x-250,y,"Enemy Killed:"+string(global.enemykill),c_red,c_red,c_red,c_red,1);
draw_text_color(x-250,y+100,"You survived:"+string(global.timer/room_speed),c_red,c_red,c_red,c_red,1);