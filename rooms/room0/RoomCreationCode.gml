repeat (irandom_range(5, 25)) {
	if (irandom(5) == 4) {
		var inst = instance_create_layer(0, 0, "Instances", obj_asteroid_medium);
	} else {
		var inst = instance_create_layer(0, 0, "Instances", obj_asteroid_small);
	}
	with (inst) {
		do {
			x = irandom(room_width);
			y = irandom(room_height);
		} until (!place_meeting(x, y, obj_player));
	}
}