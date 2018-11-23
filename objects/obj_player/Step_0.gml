/// @description Movement and step code here
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

if (hp <= 0) {
	instance_destroy();	
	obj_stats.level = 1;
	room_restart();
}