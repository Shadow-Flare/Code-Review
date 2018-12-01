///@descr draw_self_color_ext(color, x, y, alpha);
///@arg color
///@arg [optional]x
///@arg [optional]y
///@arg [optional]alpha
var col = argument[0];
var _x = x, _y = y, _alpha = image_alpha;
if (argument_count > 1) {
	_x = argument[1];
	if (argument_count > 2) {
		_y = argument[2];
		if (argument_count > 3) {
			_alpha = argument[3];	
		}
	}
}
draw_sprite_ext(sprite_index, image_index, _x, _y, image_xscale, image_yscale, image_angle, col, _alpha);