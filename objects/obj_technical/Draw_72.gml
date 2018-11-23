/// @description Draw Under Stars
star_layer_num /= 2;
for (var i = 0; i < star_layer_num; i++) {
	var spd = (i/(star_layer_num+1));
	var xpos = global.view_x*(1-(spd*i));
	var ypos = global.view_y*(1-(spd*i));
	var _scale =  0.5+(i/star_layer_num)/2;
	if (surface_exists(star_layers[i])) {
		draw_surface_tiled_ext(star_layers[i], xpos, ypos, _scale, _scale, c_white, 1);
	} else {
		surface_free(star_layers[i]);
		star_layers[i] = surface_create(room_width, room_height);
		var sr2 = 2*star_r,
		rw = room_width-sr2,
		rh = room_height-sr2;
		surface_set_target(star_layers[i]);
		repeat (irandom_range(25, 100)) {
			var col = star_colors[irandom(array_length_1d(star_colors)-1)];
			var _x = irandom(rw)+star_r,
				_y = irandom(rh)+star_r;
			for (var j = star_r; j >= 0; j--) {
				draw_set_alpha((star_r-j)/star_r);
				draw_circle_color(_x, _y, j, col, col, true);
			}
		}
		surface_reset_target();
		draw_surface_tiled_ext(star_layers[i], xpos, ypos, _scale, _scale, c_white, 1);
	}
}
star_layer_num *= 2;