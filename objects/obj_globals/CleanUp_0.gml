/// @description Party Call Clean up
// You can write your code in this editor
for (var i = 0; i < array_length_1d(pc_part); i++) {
	part_type_destroy(pc_part[i]);	
}

for (var i = 0; i < array_length_1d(pc_sys); i++) {
	part_emitter_destroy_all(pc_sys[i]);
	part_system_destroy(pc_sys[i]);
}
