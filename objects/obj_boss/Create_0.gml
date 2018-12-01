/// @description Initialize the boss
event_inherited();
hp = 100;
size = 2;
movement_style = MOVEMENT_STYLES.TOCENTER;
attack_style = ENEMY_ATTACK_STYLES.RADIAL;
num_outputs = 36;
xoff = sprite_width;
yoff = sprite_height;
rof = room_speed*5;
view_w = global.view_width;
view_h = global.view_height;
attack_sprite = spr_boss_attack;
attack_frame = 3;
attack_image_speed = 0.5;
bar_time = room_speed;
alpha = 0;
can_fire = false;

was_hp = hp;
max_hp = hp;
bar_hp_was = 0;
bar_time2 = 30;
timer[0] = -1;
timer[1] = -1;