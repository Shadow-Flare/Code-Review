/// @description Initialization
randomize();
start_spd = irandom_range(1, 2);
pred_dist = 20;
var s = start_spd*pred_dist;
var pred_rep = 200;
var rep = 0;
do {
	dir = irandom(36)*10;
	rep++;
} until (rep > pred_rep || collision_line(x, y, x+lengthdir_x(s, dir), y+lengthdir_y(s, dir), par_asteroid, true, true) == noone);
size = 0;
spd = start_spd*obj_stats.level;