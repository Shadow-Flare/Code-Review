/// @description Movement
if (!instance_exists(creator)) {
	instance_destroy();
	exit;
}
if (creator.object_index == obj_player) {
	color = c_lime;
} else {
	color = c_red;	
}
time++;
if (time%1 == 0) {
	var _inst = instance_create_layer(x, y, "Instances", obj_bullet_fade);
	_inst.col = color;
	_inst.image_angle = image_angle;
	
}
spd = lerp(spd, max_spd, 0.1);
x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);
image_angle = dir;
part_type_speed(pc_part[2], 0.6, 10, 0, 0);
part_type_direction(pc_part[2], dir-30, dir+30, 0, 0.01);
part_emitter_region(pc_sys[3], pc_emit[3], x-lengthdir_x(24, image_angle), x+lengthdir_x(24, image_angle), y-lengthdir_y(24, image_angle), y+lengthdir_y(24, image_angle), ps_shape_line, ps_distr_gaussian);
part_emitter_stream(pc_sys[3], pc_emit[3], pc_part[2], 1);
if (x > room_width || x < 0 || y > room_height || y < 0) {
	instance_destroy();	
}
//0 = 0
//1 = 2
//2 = 3
//3 = 4
if (place_meeting(x, y, par_asteroid)) {
	var inst = instance_place(x, y, par_asteroid);
	instance_destroy();
	instance_destroy(inst);
}


