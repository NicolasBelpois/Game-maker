/// @description Move to next room

with(obj_Player)
{
	if(hascontrol)
	{
		hascontrol = false;
		scr_Transition(TRANS_MODE.GOTO,other.target);
	}
}