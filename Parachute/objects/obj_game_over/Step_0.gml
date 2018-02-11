/// @description Insert description here
// You can write your code in this editor

if global.game_over && alarm[0] == -1
{
	with (obj_parachute)
	{
		effect_create_above(ef_ring, x, y, 2, c_yellow);
		effect_create_above(ef_ring, x+10, y, 2, c_yellow);
		effect_create_above(ef_ring, x-10, y, 2, c_yellow);
		effect_create_above(ef_ring, x, y+10, 2, c_yellow);
		effect_create_above(ef_ring, x, y-10, 2, c_yellow);
		instance_destroy();
	}
	alarm[0] = 80;
}
