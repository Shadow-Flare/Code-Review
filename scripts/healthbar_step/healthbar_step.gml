///@func healthbar_step();
///@descr the step function for the alpha-fade, lerp-subtract healthbar system
if (timer[0] > 0) {
	if (timer[1] <= 0) {
		timer[1] = bar_time2;
	}
	alpha = lerp(alpha, 1, (bar_time2-timer[1])/bar_time2);
	if (timer[0] < (bar_time/2)) {
		bar_hp_was = lerp(bar_hp_was, hp, (bar_time-(timer[0]*2))/bar_time);
	}
} else {
	if (timer[1] > 0) {
		alpha = lerp(alpha, 0, (bar_time2-timer[1])/bar_time2);
	}
}