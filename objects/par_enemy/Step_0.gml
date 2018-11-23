/// @description State Machine
// You can write your code in this editor
target = obj_player;
switch (state) {
	case ENEMY_STATES.MOVE:
		enemy_movement(movement_style, substate, attack_style);
	break;
}
room_wrap();
if (hp <= 0) {
	instance_destroy();	
}