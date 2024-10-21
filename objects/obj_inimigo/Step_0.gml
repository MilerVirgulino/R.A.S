// Verifica se o inimigo foi ativado para se mover
if (moving) {
    // Movimento entre start_y e end_y no eixo Y
    if (y < end_y) {
        y += speed;  // Move para baixo
    } else {
        instance_destroy();  // Inimigo desaparece ao alcançar o final
    }
}

// Verifica colisão com o jogador para reiniciar a sala
if (place_meeting(x, y, obj_personagem)) {
    show_message("Você morreu!");
    room_restart();  // Reinicia a sala
}
