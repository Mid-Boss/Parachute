/// @description Insert description here
// You can write your code in this editor

if (y_start > y_end) && first
{
	first = false;
	move_up = true;
	below = true;
	end_point = y_start;
}
else if (y_end > y_start) && first
{
	first = false;
	move_up = false;
	below = false;
	end_point = y_end;
}

if ((y > y_end) && !below)
{
	move_up = true;
	end_point = y_start;
}
else if ((y < y_start) && !below)
{
	move_up = false;
	end_point = y_end;
}
else if ((y < y_end) && below)
{
	move_up = false;
	end_point = y_start;
}
else if ((y > y_start) && below)
{
	move_up = true;
	end_point = y_end;
}

if (end_point == y_start)
{
	distance = abs(y - y_start);
}
else if (end_point == y_end)
{
	distance = abs(y - y_end);
}

if (distance > 20)
{
	move_percent = 0.75;
}
else if ((distance < 20) && (distance > 10))
{
	move_percent = 0.50;
}
else if ((distance < 10) && (distance > 5))
{
	move_percent = 0.25;
}
else if (distance < 5)
{
	move_percent = 0.10;
}
	
	
if (move_up)
{
	y -= v_spd * move_percent;
}
else
{
	y += v_spd * move_percent;
}

if alarm[0] == -1
{
	alarm[0] = irandom_range(40, 80);
}