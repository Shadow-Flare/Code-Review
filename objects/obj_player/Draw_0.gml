/// @description Draw HP bar
// You can write your code in this editor
draw_self();
if (alarm[2] > 0) {
	if (alarm[3] <= 0) {
		alarm[3] = bar_time2;
	}
	alpha = lerp(alpha, 1, (bar_time2-alarm[3])/bar_time2);
	if (alarm[2] < (bar_time/2)) {
		bar_hp_was = lerp(bar_hp_was, hp, (bar_time-(alarm[2]*2))/bar_time);
	}
	draw_set_alpha(alpha);
	draw_healthbar(x-32, y-35, x+32, y-50, (bar_hp_was/max_hp)*100, c_black, c_red, c_red, 0, false, false);
	draw_healthbar(x-32, y-35, x+32, y-50, (hp/max_hp)*100, c_black, c_green, c_green, 0, false, false);
	draw_set_alpha(1);
} else {
	if (alarm[3] > 0) {
		alpha = lerp(alpha, 0, (bar_time2-alarm[3])/bar_time2);
	}
	draw_set_alpha(alpha);
	draw_healthbar(x-32, y-35, x+32, y-50, (bar_hp_was/max_hp)*100, c_black, c_red, c_red, 0, false, false);
	draw_healthbar(x-32, y-35, x+32, y-50, (hp/max_hp)*100, c_black, c_green, c_green, 0, false, false);
	draw_set_alpha(1);
}