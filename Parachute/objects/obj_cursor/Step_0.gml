/// @description Insert description here
// You can write your code in this editor

if !global.victory && !global.game_over
{
	if curr_timer == 0 && !is_busy
	{
		nuke_count = instance_number(obj_nuke);
		lowest_nuke = 0;
		for (var i = 0; i < nuke_count; i++)
		{
			o_nuke = instance_find(obj_nuke, i);
			if o_nuke.y > lowest_nuke.y
				lowest_nuke = o_nuke;
		}
	
		predict_x = lowest_nuke.x + (lowest_nuke.hspeed * 20);
		predict_y = lowest_nuke.y + (lowest_nuke.vspeed * 20);
		move_towards_point(predict_x, 
							predict_y,
							slide_speed);
		is_busy = true;
	}

	if (abs(x - predict_x) < 40) && (abs(y - predict_y) < 40) && is_busy
	{
		x = predict_x;
		y = predict_y;
		speed = 0;
		instance_create_depth(x, y, -200, obj_explosion);
		curr_timer = timer;
		is_busy = false;
	}

	if curr_timer > 0 
	{
		curr_timer -= 1;
	}
}
else
	speed = 0;
	
if global.victory
{
	timeline_running = true;
}

if move_down
{
	y += 2;
}
if move_up
{
	y -= 5;
}