///@desc scr_Screenshake(magnitude,frames)
///@arg Magnitude sets the magnitude of the sake ( radius in pixel)
///@arg Frames sets the length on the shake frames(60 = 1sec in 60fps)

with(obj_Camera)
{
	if(argument[0] > shake_remain)
	{
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}
}