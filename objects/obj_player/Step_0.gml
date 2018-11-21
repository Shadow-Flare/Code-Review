/// @description Movement and step code here
switch (state) {
	#region Invincible
	case player_states.invincible:
		var inst = instance_place(x, y, par_asteroid);
		if (inst != noone) {
			instance_destroy(inst);	
		}
	break;
	#endregion
	
	#region movable
	case player_states.movable:
		player_state_moveable(substate);
	break;
	#endregion
}
