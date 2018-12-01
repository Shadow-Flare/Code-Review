///@func particles_init();
///@descr initializes all of the particles
globalvar pc_part, pc_sys, pc_emit;
var num = 0;

pc_part = [];
pc_emit = [];
pc_sys = [];

pc_part[num] = part_type_create();
pc_sys[0]  = part_system_create_layer("Over_Particles", false);
pc_sys[1]  = part_system_create_layer("Under_Particles", false);
pc_sys[2] = part_system_create_layer("Over_Particles", false);
pc_sys[3] = part_system_create_layer("Over_Particles", false);
pc_sys[4] = part_system_create_layer("Over_Particles", false);

pc_emit[0] = part_emitter_create(pc_sys[0]);
pc_emit[2] = part_emitter_create(pc_sys[2]);
pc_emit[3] = part_emitter_create(pc_sys[3]);
pc_emit[4] = part_emitter_create(pc_sys[4]);
pc_emit[1] = part_emitter_create(pc_sys[1]);
//part_system_depth(pc_sys[0], 0);
//part_system_depth(pc_sys[1], 100);

part_type_sprite(pc_part[num], spr_rock_32, false, false, false);
part_type_life(pc_part[num], 10, 60);
part_type_direction(pc_part[num], 0, 360, 0.10, 0.01);
part_type_orientation(pc_part[num], 90, 90, 0.20, 0.05, 1);
part_type_speed(pc_part[num], 0.06, 1, 0, 0);
part_type_size(pc_part[num], 0.62, 1, -0.01, -0.01);
part_type_alpha3(pc_part[num], 0.90, 1, 0);
part_type_colour3(pc_part[num], make_colour_rgb(132, 126, 135), make_colour_rgb(105, 106, 106), make_colour_rgb(89, 86, 82));
part_type_blend(pc_part[num], false);
part_type_gravity(pc_part[num], 0, 270);

part_emitter_region  (pc_sys[0], pc_emit[0], x-64, x+64, y-64, y+64, ps_shape_ellipse, ps_distr_gaussian);


num++;

pc_part[num] = part_type_create();
part_type_sprite(pc_part[num], spr_flare_8, false, false, false);
part_type_life(pc_part[num], 10, 60);
part_type_direction(pc_part[num], 0, 360, 0, 0);
part_type_orientation(pc_part[num], 0, 360, 0, 0, 1);
part_type_speed(pc_part[num], 0.06, 1, 0, 0.00);
part_type_size(pc_part[num], 0.10, 1, 0.01, -0.25);
part_type_alpha3(pc_part[num], 0.90, 1, 0);
part_type_colour3(pc_part[num], make_colour_rgb(223, 113, 38), make_colour_rgb(172, 50, 50), make_colour_rgb(138, 111, 48));
part_type_blend(pc_part[num], true);
part_type_gravity    (pc_part[num], 0.12, 270);

part_emitter_region  (pc_sys[2], pc_emit[2], x-20, x+20, y-64, y+64, ps_shape_diamond, ps_distr_gaussian);

num++;

pc_part[num] = part_type_create();
part_type_sprite     (pc_part[num], spr_spark_8, false, false, false);
part_type_life       (pc_part[num], 10, 60);
part_type_direction  (pc_part[num], 0, 360, 0, 0);
part_type_orientation(pc_part[num], 90, 90, 0, 0, 0);
part_type_speed(pc_part[num], 0.06, 1, 0, 0);
part_type_size       (pc_part[num], 0.10, 1, 0.01, 0);
part_type_alpha3     (pc_part[num], 0.90, 1, 0);
part_type_colour3    (pc_part[num], make_colour_rgb(75, 105, 47), make_colour_rgb(106, 190, 48), make_colour_rgb(153, 229, 80));
part_type_blend      (pc_part[num], true);

part_type_gravity    (pc_part[num], 0.0, 270);


part_emitter_region  (pc_sys[3], pc_emit[3], x-0, x+0, y-24, y+24, ps_shape_line, ps_distr_gaussian);
num++;



pc_part[num] = part_type_create();
part_type_sprite     (pc_part[num], spr_nuke_32, false, false, false);
part_type_life       (pc_part[num], 60, 120);
part_type_direction  (pc_part[num], 0, 360, 0, 0);
part_type_orientation(pc_part[num], 90, 90, 0, 0, 0);
part_type_speed      (pc_part[num], 0.06, 1, 0, 0);
part_type_size       (pc_part[num], 0.10, 1, 0.01, 0.01);


part_type_alpha3     (pc_part[num], 0.90, 1, 0);


part_type_colour3    (pc_part[num], make_colour_rgb(223, 113, 38), make_colour_rgb(172, 50, 50), make_colour_rgb(95, 205, 228));


part_type_blend      (pc_part[num], 1);


part_type_gravity    (pc_part[num], 0, 270);


part_emitter_region  (pc_sys[4], pc_emit[4], x-64, x+64, y-64, y+64, ps_shape_rectangle, ps_distr_gaussian);
num++;


pc_part[num] = part_type_create();


part_type_sprite     (pc_part[num], spr_cloud_32, false, false, false);


part_type_life       (pc_part[num], 90, 150);


part_type_direction  (pc_part[num], 0, 360, 0, 0);


part_type_orientation(pc_part[num], 90, 90, 0, 0, 0);


part_type_speed      (pc_part[num], 0.06, 0.14, 0, 0);


part_type_size       (pc_part[num], 0.10, 0.82, 0.05, -0.10);


part_type_alpha3     (pc_part[num], 0.90, 1, 0);


part_type_colour3    (pc_part[num], make_colour_rgb(89, 86, 82), make_colour_rgb(0, 0, 0), make_colour_rgb(0, 0, 0));


part_type_blend      (pc_part[num], 0);


part_type_gravity    (pc_part[num], 0, 270);

part_emitter_region  (pc_sys[1], pc_emit[1], x-48, x+48, y-48, y+48, ps_shape_ellipse, ps_distr_gaussian);
