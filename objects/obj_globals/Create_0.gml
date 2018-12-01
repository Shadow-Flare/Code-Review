/// @description Initialize globals
// You can write your code in this editor
global.view_x = 0;
global.view_y = 0;
var cam = view_camera[0];
global.view_height = camera_get_view_height(cam);
global.view_width = camera_get_view_width(cam);
//particles_init();
global.enemies = true;