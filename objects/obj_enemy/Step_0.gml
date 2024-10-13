// No Step Event de obj_inimigo
if (distance_to_object(obj_personagem) < 10) { // Distância para ativar o movimento
    jogador_proximo = true;
}

// Movimenta o inimigo se o jogador estiver próximo
if (jogador_proximo) {
    x += direcao * velocidade;

    // Inverte a direção ao chegar nos pontos A ou B
    if (x >= pontoB) {
        direcao = -1;
    } else if (x <= pontoA) {
        direcao = 1;
    }
}

// Verificar colisão com o jogador
if (place_meeting(x, y, obj_player)) {
    with (obj_personagem) {
        instance_destroy(); // Destrói o jogador (ele morre)
    }
}