/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_Spawner))
{
	with(obj_Spawner)
	{
		if(triggered)
		{
			remaining[current_wave]--;
		}
	}
}