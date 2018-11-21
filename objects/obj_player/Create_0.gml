/// @description Initialize
// You can write your code in this editor
dir = 0;
spd = 0;
can_fire = true;
alarm[1] = 120;
enum player_states {
	invincible,
	movable
}

enum player_substates {
	_default	
}
state = player_states.invincible;
substate = player_substates._default;