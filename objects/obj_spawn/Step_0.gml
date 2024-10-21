// Step Event do obj_spawn
if (distance_to_object(obj_personagem) < distancia_ativacao && !inimigo_spawnado) {
    // Spawnar o inimigo quando o jogador estiver próximo
    var inimigo = instance_create_layer(ponto_spawn_x, ponto_spawn_y, "Instances", obj_inimigo);
    
    // Definir os pontos entre os quais o inimigo irá se mover
    inimigo.pontoA = x; // Ponto inicial
    inimigo.pontoB = x + 200; // Ponto final (modifique conforme necessário)
    
    inimigo_spawnado = true; // Marcar que o inimigo foi spawnado
}