/// @description Update was_hp
if (was_hp != hp) {
	bar_hp_was = max(was_hp, bar_hp_was);
	timer[0] = bar_time;
}
was_hp = hp;