/// @description Insert description here
// You can write your code in this editor

switch v_speed
{
	case 3:
		o_color = c_green;
		break;
	case 4:
		o_color = c_blue;
		break;
	case 5:
		o_color = c_orange;
		break;
	case 6:
		o_color = c_red;
		break;
}

for (var i = 0; i < count; i++)
{
	draw_sprite_ext(spr_nuke, 0, old_x[i], old_y[i], 1, 1, 0, o_color, 0.5);
}

image_blend = o_color;

draw_self();