/// @description Insert description here
// You can write your code in this editor

if instance_place(x, y, obj_parent_collision)
{
	instance_destroy();
}

switch end_point
{
	case 1:
		end_x = 160;
		break;
	case 2:
		end_x = 283;
		break;
	case 3:
		end_x = 385;
		break;
	case 4:
		end_x = 625;
		break;
	case 5:
		end_x = 740;
		break;
	case 6:
		end_x = 840;
		break;
}

move_towards_point(end_x, max_y, v_speed);

if y > max_y
	instance_destroy();

count += 1;
old_x[count] = x;
old_y[count] = y;