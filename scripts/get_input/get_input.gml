///@descr get_input();
///@returns ds_map with input in it
var keys = ds_map_create();
with (obj_stats) {
	for (var i = ds_map_find_first(player_keys); i != undefined; i = ds_map_find_next(player_keys, i)) {
		var key_list = player_keys[? i];
		keys[? i] = 0;
		for (var j = 0; j < ds_list_size(key_list); j++) {
			var key = key_list[| j];
			if (keyboard_check_pressed(key)) {
				keys[? i] = 2;
			} else if (keyboard_check_released(key)) {
				keys[? i] = 3;
			} else if (keyboard_check(key)) {
				keys[? i] = 1;	
			}
		}
	}
}
return keys;