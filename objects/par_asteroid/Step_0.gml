/// @description Step logic
spd = start_spd*obj_stats.level;
x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);
//if (abs(dir-image_angle) > 0.1) {
//	image_angle = lerp(image_angle, dir, 0.1);
//} else {
//	image_angle = dir;
//}

//New rotation code
//This allows us to rotate past the 0 degree threshold without going
//Back around counterclockwise.
if (abs(dir-image_angle) > 0.1) {
	image_angle += angle_difference(dir,image_angle) * 0.1;
} else {
	image_angle = dir;
}

if (x > room_width) {
	x -= room_width;	
} else if (x < 0) {
	x += room_width;
}

if (y > room_height) {
	y -= room_height;	
} else if (y < 0) {
	y += room_height;	
}
var inst = instance_place(x, y, par_asteroid);
if (inst != noone) {
	var _odir = irandom_range(300, 400)-point_direction(inst.x, inst.y, x, y);
	var _tdir = irandom_range(300, 400)-point_direction(x, y, inst.x, inst.y);
	if (inst.size == size) {
		dir = _tdir;
		inst.dir = _odir;
	} else {
		if (inst.size > size) {
			instance_destroy();	
			inst.dir = _odir;
		} else {
			with (inst) {
				instance_destroy();	
			}
			dir = _tdir;
		}
	}	
}
var inst = instance_place(x, y, obj_bullet);
if (inst != noone) {
	instance_destroy();
	with (inst) {
		instance_destroy();
	}	
}