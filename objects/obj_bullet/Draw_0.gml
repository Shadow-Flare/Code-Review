/// @description Drawing with color
if (!instance_exists(creator)) {
	instance_destroy();
	exit;
}
if (creator.object_index != obj_player) {
	draw_self_color(c_red);
} else {
	draw_self_color(c_lime);
}