
if (global.select_opc=0) {
	var time = current_time / 1000;
image_yscale = sine_between(time, 2.5, 3, 2.5);
image_angle = sine_wave(time, 2, 15, 0);
}
else{
	image_yscale = 3
	image_angle = 0
}