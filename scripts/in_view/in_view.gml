///@fun in_view();
///@returns bool whether in the view or not
if (x > global.view_x && x < global.view_x+global.view_width) {
	if (y > global.view_y && y < global.view_y+global.view_height) {
		return true;
	}
}
return false;