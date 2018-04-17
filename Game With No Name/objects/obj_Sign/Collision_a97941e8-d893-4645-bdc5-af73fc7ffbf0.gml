/// @description Insert description here
// You can write your code in this editor


if(point_in_circle(obj_Player.x,obj_Player.y,x,y,64)) && (!instance_exists(obj_text)) && (global.collision == false)
{
	with(instance_create_layer(x,y-64,layer,obj_text))
	{
		global.collision = true;
		text = other.text;
		length = string_length(text);	
	}
	with(obj_Camera)
	{
		follow = other.id;
	}
}