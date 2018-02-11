/// @description Insert description here
// You can write your code in this editor

x = v_i * t * cos(sigma) + x_start;
y = -(v_i * t * sin(sigma)) + (0.5 * grav * sqr(t)) + y_start;
t += t_spd/room_speed;