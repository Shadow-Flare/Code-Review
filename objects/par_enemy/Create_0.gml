/// @description Init the parent
enum ENEMY_STATES {
	MOVE
}

enum ENEMY_SUBSTATES {
	DEFAULT,
	ATTACK
}

enum MOVEMENT_STYLES {
	ZIGZAG	
}

enum ENEMY_ATTACK_STYLES {
	DEFAULT	
}
state = ENEMY_STATES.MOVE;
substate = ENEMY_SUBSTATES.DEFAULT;
bullet_speed = 12;
rof = 30;
hp = 1;
damage = 10;
can_fire = true;
dir = irandom(36)*10;
attack_style = ENEMY_ATTACK_STYLES.DEFAULT;
movement_style = MOVEMENT_STYLES.ZIGZAG;
min_time = 120;
max_time = 360;
max_spd = 1;
attack_sprite = noone;
attack_frame = 0;