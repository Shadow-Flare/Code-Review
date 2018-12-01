/// @description Init
// this object is for controlling the game, effects, etc.
star_layer_num = 35;
star_layers = [];
star_r = 4;

tox = obj_player.x;
toy = obj_player.y;
x_pos = 0;
y_pos = 0;
star_colors = [];
star_colors[0] = c_red;
star_colors[1] = c_green;
star_colors[2] = c_blue;
star_colors[3] = c_lime;
star_colors[4] = c_teal;

var sr2 = 2*star_r,
	rw = room_width-sr2,
	rh = room_height-sr2;
for (var i = 0; i < star_layer_num; i++) {
	star_layers[i] = surface_create(room_width, room_height);
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
}
y_offset = 200;
y_offset_per_layer = -12;
targ_w = 512;
targ_h = 384;
view_w = 0;
view_h = 0;