///@func enemy_movement(style, substate, attack_style);
///@arg style the style of movement
///@arg substate the substate of the enemy
///@arg attack_style the attack style of the enemy
var style = argument[0];
var sub = argument[1];
var attack_style = argument[2];
var spd = 0;
switch (sub) {
	#region default
	case ENEMY_SUBSTATES.DEFAULT:
	
		switch (style) {
			#region Zig Zag
			case MOVEMENT_STYLES.ZIGZAG:
				if (alarm[0] <= 0) {
					alarm[0] = irandom_range(min_time, max_time);
					dir = random(360);
				}
				spd = max_spd;
				x += lengthdir_x(max_spd, dir);
				y += lengthdir_y(max_spd, dir);
				if (can_fire && in_view()) {
					var _ar = angle_to_intercept(bullet_speed, target, true);
					var _dir = _ar[0];
					var _time = _ar[1];
					var _ldx = lengthdir_x(_time*bullet_speed, _dir),
						_ldy = lengthdir_y(_time*bullet_speed, _dir),
						col = collision_line(x, y, x+_ldx, y+_ldy, all, false, true);
					if (col == noone || col == target || col == id) {
						substate = ENEMY_SUBSTATES.ATTACK;	
					}
					
				}
			break;
			#endregion
			
			#region To Center
			case MOVEMENT_STYLES.TOCENTER:
				spd = min(max_spd, distance_to_point(room_width/2, room_height/2));
				dir = point_direction(x, y, room_width/2, room_height/2);
				if (can_fire) {
					substate = ENEMY_SUBSTATES.ATTACK;
				} else {
					if (alarm[1] == -1) {
						alarm[1] = rof;
					}
				}
			break;
			#endregion
		}
	break;
	#endregion
	
	#region attack
	case ENEMY_SUBSTATES.ATTACK:
		switch (attack_style) {
			#region Default Attack Style
			case ENEMY_ATTACK_STYLES.DEFAULT:
				if (alarm[0] <= 0) {
					alarm[0] = irandom_range(min_time, max_time);
					dir = dir+irandom_range(9, 18)*10;
				}
				x += lengthdir_x(max_spd, dir);
				y += lengthdir_y(max_spd, dir);
				if (attack_sprite == noone) {
					var full = false;
					if (fps_real >= 90) {
						full = true;
					}
					var attack_dir = angle_to_intercept(bullet_speed, target, full);
					var attack_dir = attack_dir[0];
					var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
					bullet.creator = id;
					bullet.max_spd = bullet_speed;
					bullet.dir = attack_dir;
					bullet.damage = damage;
					alarm[1] = rof;
					substate = ENEMY_SUBSTATES.DEFAULT;
					can_fire = false;
				} else {
					if (sprite_index != attack_sprite) {
						sprite_index = attack_sprite;
						image_index = 0;
					}
					if (floor(image_index) == attack_frame && can_fire) {
						var full = false;
						if (fps_real >= 90) {
							full = true;
						}
						var attack_dir = angle_to_intercept(bullet_speed, target, full);
						var attack_dir = attack_dir[0];
						var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
						bullet.damage = damage;
						bullet.creator = id;
						bullet.dir = attack_dir;
						bullet.max_spd = bullet_speed;
						alarm[1] = rof;
						//substate = ENEMY_SUBSTATES.DEFAULT;
						can_fire = false;
					}
					if (floor(image_index) == image_number-1) {
						substate = ENEMY_SUBSTATES.DEFAULT;
					}
				}
			break;
			#endregion
			
			#region Boss 1 Attack Style A
			case ENEMY_ATTACK_STYLES.RADIAL:
			if (attack_sprite == noone) {
				enemy_attack_radial();
			} else {
				if (sprite_index != attack_sprite) {
					was_sprite = sprite_index;
					sprite_index = attack_sprite;
					image_index = 0;
					was_image_speed = image_speed;
					image_speed = attack_image_speed
				}
				if (floor(image_index) == attack_frame && can_fire) {
					enemy_attack_radial();
				}
				
				if (floor(image_index) == image_number-1) {
					substate = ENEMY_SUBSTATES.DEFAULT;
					sprite_index = was_sprite;
					image_speed = was_image_speed;
				}
			}
			break;
			#endregion
		}
	break;
	#endregion
}
x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);