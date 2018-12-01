/// @description Camera
if (keyboard_check_pressed(vk_f1)) {
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_enemy_one);
}
tox = obj_player.x;
toy = obj_player.y;
if (point_distance(tox, toy, x_pos, y_pos) > 0.1) {
	x_pos += (tox-x_pos)/16;
	y_pos += (toy-y_pos)/16;
} else {
	x_pos = tox;
	y_pos = toy;
}
camera_set_view_pos(view_camera[0],x_pos-(global.view_width/2),y_pos-(global.view_height/2));
view_w = global.view_width;
view_h = global.view_height;
if (abs(view_w-targ_w) > 0.1) {
	view_w = lerp(view_w, targ_w, 0.01);	
} else {
	view_w = targ_w;	
}

if (abs(view_h-targ_h) > 0.1) {
	view_h = lerp(view_h, targ_h, 0.01);	
} else {
	view_h = targ_h;	
}
camera_set_view_size(view_camera[0], view_w, view_h);