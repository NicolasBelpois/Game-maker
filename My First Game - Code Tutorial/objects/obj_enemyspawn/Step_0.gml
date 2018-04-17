image_xscale = min(image_xscale + 0.02,1);
image_yscale = min(image_yscale + 0.02,1);

if (image_xscale == 1 ) {

instance_change(obj_enemy,true);

if(random(10) >= 7){
sprite_index = spr_enemyshoot;
}
}