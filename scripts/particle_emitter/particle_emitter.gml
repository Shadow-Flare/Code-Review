///@func particle_emitter(particle index);
///@arg part_index the index of the particle emitter
var part = argument[0];
switch (part) {
	case 0:
		part_emitter_region(pc_sys[0], pc_emit[0], x-(64*size), x+(64*size), y-(64*size), y+(64*size), ps_shape_ellipse, ps_distr_gaussian);
	break;
	
	case 3:
		part_emitter_region  (pc_sys[4], pc_emit[4], x-(64*size), x+(64*size), y-(64*size), y+(64*size), ps_shape_rectangle, ps_distr_gaussian);
	break;
	
	case 4:
		part_emitter_region  (pc_sys[1], pc_emit[1], x-(48*size), x+(48*size), y-(48*size), y+(48*size), ps_shape_ellipse, ps_distr_gaussian);
	break;
}