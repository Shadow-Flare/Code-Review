/// @description View Adjustment and stuff
event_inherited();
//Right now, this code isn't any different from the player
//However, in the future, it may/will be, 
//since this is an alarm replacement
for (var i = 0; i < array_length_1d(timer); i++) {
	if (timer[i] != -1) {	
		timer[i] -= min(1+timer[i], (delta_time*0.000001)*room_speed);
		if (floor(timer[i]) == 0) {
			switch (i) {
				case 0:
					was_hp = hp;
					bar_hp_was = 0;
					timer[1] = bar_time2;
				break;
			}
			timer[i] = -1;
		}
		show_debug_message(timer[i]);
	}
}

healthbar_step();

if (hp <= 0) {
	obj_technical.targ_w = 512;
	obj_technical.targ_h = 384;
} else {
	obj_technical.targ_w = 1024;
	obj_technical.targ_h = 768;
}