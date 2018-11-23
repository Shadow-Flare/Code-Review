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