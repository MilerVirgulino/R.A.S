// No evento Step
if (keyboard_check_pressed(vk_space)) {
    video_close();  // Fecha o vídeo
    room_goto(room_select);  // Vai para a próxima sala, nesse caso, a seleção
}

if (keyboard_check_pressed(vk_up)) {
    room_goto(room_select);  // Muda para a sala de seleção
}
