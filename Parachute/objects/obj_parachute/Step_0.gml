/// @description Insert description here
// You can write your code in this editor

move_wrap(true, false, 1);

if instance_place(x, y, obj_msl_cmd)
{
	global.game_over = true;
}

if instance_place(x, y, obj_spike)
{
	global.game_over = true;
}

if !is_dead && !global.game_over && !global.victory
{
	if instance_place(x, y, obj_parent_collision) && curr_iframes == 0
	{
		o_hp -= 1;
		instance_create_depth(x, y, -1100, obj_flash);
		if o_hp == 0
		{
			is_dead = true;
			global.game_over = true;
		}
		else
			curr_iframes = max_iframes;
	}

	if keyboard_check_direct(vk_left)
	{
		x -= h_speed;
	}
	if keyboard_check_direct(vk_right)
	{
		x += h_speed;
	}

	y += v_speed;
	if curr_iframes > 0
	{
		curr_iframes -= 1;
		if image_alpha = 1
			image_alpha = 0.5;
		else if image_alpha = 0.5
			image_alpha = 1;
	}
	else
		image_alpha = 1;
}

if position_meeting(x, bbox_bottom, obj_land_pad) && !global.victory
{
	instance_deactivate_object(obj_explosion);
	instance_deactivate_object(obj_nuke);
	instance_deactivate_object(obj_create_nukes);
	global.victory = true;
	image_alpha = 1;
	image_speed = 0;
}