/// @description Alpha Control
var val = lerp(alpha, 0, 0.25);
alpha = val;
if (x > room_width || x < 0 || y > room_height || y < 0) {
	instance_destroy();	
}
if (abs(alpha) <= 0.25) {
	instance_destroy();	
}