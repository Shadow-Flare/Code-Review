///@func particle_emitter_update(particle_index);
///@arg part_ind the index of the particle emitter
var part = argument[0];
switch (part) {
	case 0:
		part_emitter_region(pc_sys[0], pc_emit[0], x-(64*size), x+(64*size), y-(64*size), y+(64*size), ps_shape_ellipse, ps_distr_gaussian);
		if (alarm[0] == -1) {
			type = "burst";
			part_emitter_burst(pc_sys[0], pc_emit[0], pc_part[0], 64*size);
			alarm[0] = 60;
		}
		sys = pc_sys[0];
		emit = pc_emit[0];
	break;
	
	case 3:
		part_emitter_region(pc_sys[2], pc_emit[2], x-(64*size), x+(64*size), y-(64*size), y+(64*size), ps_shape_rectangle, ps_distr_gaussian);
		if (alarm[2] == -1) {
			type = "stream";
			part_emitter_stream(pc_sys[2], pc_emit[2], pc_part[1], 40*size);
			alarm[2] = 30;
		}
		sys = pc_sys[2];
		emit = pc_emit[2];
	break;
	
	case 4:
		if (alarm[0] == -1) {
			particle_emitter(4);
			alarm[0] = 120;
		}
		//part_emitter_stream(pc_sys[0], pc_emit[2], pc_part[1], 40*(alarm[3]/30));
		type = "stream";
		sys = pc_sys[1];
		emit = pc_emit[1];
		ptype = pc_part[4];
		part_emitter_region(pc_sys[1], pc_emit[1], x-(48*size), x+(48*size), y-(48*size), y+(48*size), ps_shape_ellipse, ps_distr_gaussian);
		part_emitter_stream(pc_sys[1], pc_emit[1], pc_part[4], 48*(0.5+0.5*(alarm[0]/120)));
		part_system_layer(pc_sys[1], "Under_Particles");
		part_system_layer(pc_sys[2], "Over_Particles");
	break;
}