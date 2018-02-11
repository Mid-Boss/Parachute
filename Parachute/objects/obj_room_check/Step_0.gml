/// @description Insert description here
// You can write your code in this editor
if !global.game_over
{
	if obj_parachute.y > room_height 
	{
		temp_x = obj_parachute.x;
		room_goto_next();
		obj_parachute.y = 0;
		obj_parachute.x = temp_x;
	}
}	