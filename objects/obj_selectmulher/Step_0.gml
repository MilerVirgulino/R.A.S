var mouse_x_pos = mouse_x;
var mouse_y_pos = mouse_y;

if (point_in_rectangle(mouse_x_pos, mouse_y_pos, x - sprite_xoffset, y - sprite_yoffset, x + sprite_width - sprite_xoffset, y + sprite_height - sprite_yoffset)) {
	var time = current_time / 1000;
image_yscale = sine_between(time, 1, 1.04, 1.02);
image_angle = sine_wave(time, 1, 0.9, 0);
}
else{
	image_yscale = 1
	image_angle = 0
}