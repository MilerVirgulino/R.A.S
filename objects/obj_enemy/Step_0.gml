// Verifica a distância do personagem
if (distance_to_object(obj_personagem) <= 100) {
    // Movimento horizontal do inimigo
    if (x < obj_personagem.x) {
        x += velocidade; // Move para a direita
    } else if (x > obj_personagem.x) {
        x -= velocidade; // Move para a esquerda
    }
}

// Verifica colisão com o personagem
if (place_meeting(x, y, obj_personagem)) {
    room_goto(room_game); // Envia para a próxima sala
}
