/// @description Insert description here
// You can write your code in this editor

if !global.game_over
{
	if obj_parachute.o_hp == 4
	{
		sprite_index = spr_green_healthbar;
	}
	if obj_parachute.o_hp == 3
	{
		sprite_index = spr_yellow_healthbar;
	}
	if obj_parachute.o_hp == 2
	{
		sprite_index = spr_orange_healthbar;
	}
	if obj_parachute.o_hp == 1
	{
		sprite_index = spr_red_healthbar;
	}
}
else
{
	sprite_index = spr_empty_healthbar;
	if alarm[0] == -1
	{
		alarm[0] = 60;
	}
}

if alarm[0] != -1
{
	y += v_spd;
}