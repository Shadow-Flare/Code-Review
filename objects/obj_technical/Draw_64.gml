/// @description Insert description here
// You can write your code in this editor
if (obj_player.state == player_states.invincible) {
	var str = round((obj_player.alarm[1]/room_speed)*100)/100;
	draw_set_color(c_gray);
	draw_text(global.port_width/2, global.port_height/2, "Invincibilty wears off in:\n     "+string(str)+" seconds");
}