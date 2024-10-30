var video_data = video_draw();
var video_status = video_data[0];
var surf = video_data[1];

if (video_status == 0) {
    draw_surface_stretched(surf, 0, 0, room_width, room_height);
}