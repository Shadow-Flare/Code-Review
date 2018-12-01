/// @description Level code
if (global.enemies) {
	if (!instance_exists(par_asteroid)) {
		level++;
		room_restart();
	}
}