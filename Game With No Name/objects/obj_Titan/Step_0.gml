 
vsp = vsp + grv; 


//Horizontal collision

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
	sprite_index = spr_EnemyA;
	image_speed = 0; 
	if(sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
		if(hsp == 0)
		{
			sprite_index = spr_Enemy; 
		}
		else
		{
			sprite_index = spr_EnemyR;
		}
	
}
if(hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;