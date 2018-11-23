///@function player_state_moveable(substate);
///@arg substate the current substate of the player
var substate = argument[0];
switch (substate) {
	case PLAYER_SUBSTATES.DEFAULT:
		var input = get_input();
		var hIn = sign(input[? "left"])-sign(input[? "right"]);
		if (input[? "left"] == 1) {
			ltime++;
			rtime--;
		} else if (input[? "right"] == 1) {
			rtime++;
			ltime--;
		} else {
			rtime = 0;
			ltime = 0;
		}
		rtime = clamp(rtime, 0, 100);
		ltime = clamp(ltime, 0, 100);
		if (hIn == 1) {
			turn_speed = lerp(turn_speed, 1, ltime/100);
		} else if (hIn == -1) {
			turn_speed = lerp(turn_speed, 1, rtime/100);
		} else {
			turn_speed = lerp(turn_speed, 0, 1/25);	
		}
		var _turn_speed = obj_stats.turn_speed*turn_speed;
		var _turn_amount = obj_stats.turn_amount*turn_speed;
		dir = lerp(dir, dir+(_turn_amount*hIn), _turn_speed);
		image_angle = dir;

		var vIn = sign(input[? "up"])-sign(input[? "down"]);
		spd = lerp(spd, obj_stats.max_spd*vIn, obj_stats.acc);

		x += lengthdir_x(spd, dir);
		y += lengthdir_y(spd, dir);

		if (input[? "fire"] > 0 && can_fire) {
			can_fire = false;
			alarm[0] = obj_stats.fire_speed;
			var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
			bullet.damage = obj_stats.damage;
			bullet.max_spd = obj_stats.bullet_speed;
			bullet.dir = dir;
			bullet.range = obj_stats.bullet_range;
			bullet.creator = id;
		}

		ds_map_destroy(input);
		room_wrap();
		var inst = instance_place(x, y, par_asteroid);
		if (inst != noone) {
			instance_destroy();
			obj_stats.level = 1;
			room_restart();
		}
	break;
}