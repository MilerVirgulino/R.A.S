
if (global.select_opc=1) {
	var time = current_time / 1000;
image_yscale = sine_between(time, 1, 1.04, 1.02);
image_angle = sine_wave(time, 1, 0.9, 0);
}
else{
	image_yscale = 1
	image_angle = 0
}