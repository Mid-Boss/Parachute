/// @description Insert description here
// You can write your code in this editor

effect_create_above(ef_ring, x, y, 2, c_yellow);
effect_create_above(ef_ring, x+10, y, 2, c_yellow);
effect_create_above(ef_ring, x-10, y, 2, c_yellow);
effect_create_above(ef_ring, x, y+10, 2, c_yellow);
effect_create_above(ef_ring, x, y-10, 2, c_yellow);
instance_destroy();