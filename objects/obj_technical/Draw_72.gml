/// @description Draw Under Stars
star_layer_num /= 2;
for (var i = 0; i < star_layer_num; i++) {
	var spd = (i/(star_layer_num+1));
	var xpos = global.view_x*(1-(spd*i));
	var ypos = global.view_y*(1-(spd*i));
	var _scale =  0.5+(i/star_layer_num)/2;
	draw_surface_tiled_ext(star_layers[i], xpos, ypos, _scale, _scale, c_white, 1);
}
star_layer_num *= 2;