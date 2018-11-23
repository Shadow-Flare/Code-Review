/// @description Movement
spd = lerp(spd, max_spd, 0.1);
x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);
image_angle = dir;
if (place_meeting(x, y, par_asteroid)) {
	var inst = instance_place(x, y, par_asteroid);
	instance_destroy();
	instance_destroy(inst);
}
with (par_enemy) {
	if (place_meeting(x, y, obj_bullet)) {
		if (other.creator.object_index == obj_player) {
			hp -= other.damage;
			instance_destroy(other);
		}
	}
}
with (obj_player) {
	if (place_meeting(x, y, obj_bullet)) {
		if (other.creator.object_index != obj_player) {
			hp -= other.damage;
			instance_destroy(other);
		}
	}
}

if (!instance_exists(creator)) {
	instance_destroy();
	exit;
}