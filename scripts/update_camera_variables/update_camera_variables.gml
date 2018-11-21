///@function update_camera_variables(camera);
///@descr Updates the camera's global variables
///@arg camera the camera to use
var cam = argument[0];
global.view_x = camera_get_view_x(cam);
global.view_y = camera_get_view_y(cam);
global.view_height = camera_get_view_height(cam);
global.view_width = camera_get_view_width(cam);
global.port_width = display_get_gui_width();
global.port_height = display_get_gui_height();