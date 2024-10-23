// Verifica se o movimento foi ativado
if (mover) {
    // Movimento horizontal do inimigo em direção ao personagem
    if (x < obj_personagem.x) {
        x += velocidade; // Move para a direita
    } else if (x > obj_personagem.x) {
        x -= velocidade; // Move para a esquerda
    }

    // Movimento vertical do inimigo em direção ao personagem
    if (y < obj_personagem.y) {
        y += velocidade; // Move para baixo
    } else if (y > obj_personagem.y) {
        y -= velocidade; // Move para cima
    }

    // Verifica colisão com o personagem
    if (place_meeting(x, y, obj_personagem)) {
        room_goto(room_game	); // Envia para a próxima sala
    }
}
