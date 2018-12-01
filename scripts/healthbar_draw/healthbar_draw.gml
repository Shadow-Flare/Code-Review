///@func healthbar_draw();
draw_set_alpha(alpha);
var _x = gui_get_x(x),
	_y = gui_get_y(y);
draw_healthbar(_x-32, _y-35, _x+32, _y-50, (bar_hp_was/max_hp)*100, c_black, c_red, c_red, 0, false, false);
draw_healthbar(_x-32, _y-35, _x+32, _y-50, (hp/max_hp)*100, c_black, c_green, c_green, 0, false, false);
draw_set_alpha(1);