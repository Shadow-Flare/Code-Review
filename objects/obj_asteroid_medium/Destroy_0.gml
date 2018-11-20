/// @description Destroy Logic
repeat (irandom_range(2, 4)) {
	do {
		var _x = x+irandom_range(-64, 64),
			_y = y+irandom_range(-64, 64);
	} until (!position_meeting(_x, _y, obj_asteroid_small));
	instance_create_layer(_x, _y, "Instances", obj_asteroid_small);
}