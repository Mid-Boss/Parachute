/// @description Insert description here
// You can write your code in this editor

start_point = random_range(0, room_width);

if nuke_timer == 0
{
	instance_create_depth(start_point, 0, -100, obj_nuke);
	nuke_timer = irandom_range(min_time, max_time);
}
else
{
	nuke_timer -= 1;
}