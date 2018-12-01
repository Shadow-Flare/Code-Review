///@func gui_get_y(room y position)
///@arg y the y position in the room
///@returns gui y
return(lerp(0,display_get_gui_height(),(argument[0]-camera_get_view_y(view_camera[0]))/camera_get_view_height(view_camera[0])));