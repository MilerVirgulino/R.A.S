// Verifica se o jogador encostou no trigger e ativa o inimigo
if (place_meeting(x, y, obj_personagem) && !triggered) {
    // Ativa o movimento do inimigo
    var enemy_instance = instance_nearest(x, y, obj_inimigo);  // Obtém a instância mais próxima do inimigo
    if (enemy_instance != noone) {
        enemy_instance.moving = true;  // Ativa o movimento do inimigo
    }
    triggered = true;  // Marca o gatilho como ativado
}
