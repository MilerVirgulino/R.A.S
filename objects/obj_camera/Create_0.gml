/* create event */
view_enabled = true; //turn on views
view_visible[0] = true; //make sure view 0 is on

//this is how you set the size of the view
//which is scaled by the window size
camera_set_view_size(view_camera[0], 640, 360);

//this sets the initial position of the camera.
//0,0 is the top-left of the view's rectangle
camera_set_view_pos(view_camera[0], 0, 0);