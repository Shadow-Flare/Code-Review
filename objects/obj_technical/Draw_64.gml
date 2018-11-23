/// @description Draw Invincibilty text
if (obj_player.state == PLAYER_STATES.INVINCIBLE) {
	//round((obj_player.alarm[1]/room_speed)*100)/100;
	var str = string_format(obj_player.alarm[1]/room_speed, 3, 2);
	draw_set_color(c_gray);
	draw_text(global.port_width/2, global.port_height/2, "Invincibilty wears off in:\n     "+str+" seconds");
}