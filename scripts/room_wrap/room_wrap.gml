///@function room_wrap();
///@descr wraps around the room
if (x > room_width) {
	x -= room_width;	
} else if (x < 0) {
	x += room_width;
}

if (y > room_height) {
	y -= room_height;	
} else if (y < 0) {
	y += room_height;	
}