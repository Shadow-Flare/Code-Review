/// @description Movement
spd = lerp(spd, max_spd, 0.1);
x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);
image_angle = dir;