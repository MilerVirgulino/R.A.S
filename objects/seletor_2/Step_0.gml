if(global.index=1){

visible=true
}else{
visible=false
}

function sine_wave(time, period, amplitude, midpoint) {
    return sin(time * 2 * pi / period) * amplitude + midpoint;
}

function sine_between(time, period, minimum, maximum) {
    var midpoint = mean(minimum, maximum);
    var amplitude = maximum - midpoint;
    return sine_wave(time, period, amplitude, midpoint);
}

var x_sprite=seletor_1.x
var time = current_time / 1000;
image_angle = sine_wave(time, 2, 3, 0);