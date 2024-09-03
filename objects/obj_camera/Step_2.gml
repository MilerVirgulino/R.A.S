/* end step event */
//get the width and the height of the view
var width = camera_get_view_width(view_camera[0]);
var height = camera_get_view_height(view_camera[0]);

//get the player's position, and then subtract half
//the view size from that position
//to center the camera on the player:
if (instance_exists(obj_personagem) == true) {
    var camerax = obj_personagem.x - (width * 0.5);
    var cameray = obj_personagem.y - (height * 0.5);
    camera_set_view_pos(view_camera[0], camerax, cameray);
}