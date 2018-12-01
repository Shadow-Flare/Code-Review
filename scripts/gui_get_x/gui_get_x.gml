///@func gui_get_x(room x position)
///@arg x the x position in the room
///@returns gui x
return(lerp(0,display_get_gui_width(),(argument[0]-camera_get_view_x(view_camera[0]))/camera_get_view_width(view_camera[0])));
