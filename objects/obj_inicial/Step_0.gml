// No evento Step
if (keyboard_check_pressed(vk_space)) {
    video_close();  // Fecha o vídeo
    room_goto(room_preludio);  // Muda para a próxima sala (pule para a próxima cutscene ou área)
}
