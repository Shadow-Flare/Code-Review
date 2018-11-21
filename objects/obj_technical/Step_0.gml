/// @description Camera
tox = obj_player.x;
toy = obj_player.y;
x_pos += (tox-x_pos)/16;
y_pos += (toy-y_pos)/16;
camera_set_view_pos(view_camera[0],x_pos-(global.view_width/2),y_pos-(global.view_height/2));