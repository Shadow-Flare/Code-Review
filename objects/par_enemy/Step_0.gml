/// @description State Machine
// You can write your code in this editor
target = obj_player;
var inst = instance_place(x, y, obj_bullet);
if (inst != noone && inst.creator.object_index == obj_player) {
	hp -= inst.damage;
	instance_destroy(inst);
}
switch (state) {
	case ENEMY_STATES.MOVE:
		enemy_movement(movement_style, substate, attack_style);
	break;
}
room_wrap();
if (hp <= 0) {
	instance_destroy();	
}