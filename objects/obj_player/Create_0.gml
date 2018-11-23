/// @description Initialize
// You can write your code in this editor
dir = 0;
spd = 0;
rtime = 0;
ltime = 0;
can_fire = true;
alarm[1] = room_speed*2;
enum PLAYER_STATES {
	INVINCIBLE,
	MOVABLE
}

turn_speed = 0;
bar_time = room_speed;
alpha = 1;

enum PLAYER_SUBSTATES {
	DEFAULT	
}

state = PLAYER_STATES.INVINCIBLE;
substate = PLAYER_SUBSTATES.DEFAULT;
hp = obj_stats.player_max_hp;
was_hp = hp;
max_hp = hp;
bar_hp_was = 0;
bar_time2 = 30;