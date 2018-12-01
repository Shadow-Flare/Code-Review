///@func enemy_attack_radial();
var _lx, _ly, bullet, incr;
incr = 360/num_outputs;
for (var i = 0; i < 360; i += incr) {
	_lx = x+lengthdir_x(xoff, i);
	_ly = y+lengthdir_y(yoff, i);
	bullet = instance_create_layer(_lx, _ly, "Instances", obj_bullet);
	bullet.damage = damage;
	bullet.creator = id;
	bullet.dir = i;
	bullet.max_spd = bullet_speed;
}
alarm[1] = rof;
can_fire = false;
substate = ENEMY_SUBSTATES.DEFAULT;