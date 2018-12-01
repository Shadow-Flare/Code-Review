/// @description Init

//Just in case:

if (!variable_instance_exists(id, "particle_num")) {
	instance_destroy();
}

if (!variable_instance_exists(id, "size")) {
	size = 1;
}


particle_emitter(particle_num);
