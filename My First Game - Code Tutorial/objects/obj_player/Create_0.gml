
//player info
magazin_pistol = 10;
magazin_shotgun = 3;
reload_time = 40;
global.shotfire = 0;
global.enemykill = 0;



alarm[0] = reload_time;

//tile map
var l = layer_get_id("collision_map");
tilemap = layer_tilemap_get_id(l);

//sprite info

sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);