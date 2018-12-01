/// @description Movement and step code here
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

switch (state) {
	#region Invincible
	case PLAYER_STATES.INVINCIBLE:
		var inst = instance_place(x, y, par_asteroid);
		if (inst != noone) {
			instance_destroy(inst);	
		}
	break;
	#endregion
	
	#region movable
	case PLAYER_STATES.MOVABLE:
		player_state_moveable(substate);
	break;
	#endregion
}
var inst = instance_place(x, y, obj_bullet);
if (inst != noone && inst != undefined && inst.creator.object_index != undefined && object_is_ancestor(inst.creator.object_index, par_enemy)) {
	hp -= inst.damage;
	instance_destroy(inst);
}

if (hp <= 0) {
	instance_destroy();	
	obj_stats.level = 1;
	room_restart();
}