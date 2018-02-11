/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_red);
draw_set_alpha(alpha);
draw_rectangle(view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0], false);
draw_set_colour(c_black);
draw_set_alpha(1);

alpha -= 0.05;
if (alpha <= 0) {
   instance_destroy();
}