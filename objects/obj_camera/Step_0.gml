if (instance_exists(obj_player))
{
	alvo = obj_player
}

x=lerp(x,alvo.x, 0.1)
y=lerp(y,alvo.y, 0.1)

var _larg_camera = camera_get_view_width(view_camera[0])
var _alt_camera = camera_get_view_height(view_camera[0])
var _cam_x = x - _larg_camera / 2
var _cam_y = y - _alt_camera / 2


camera_set_view_pos(view_camera[0], _cam_x, _cam_y)