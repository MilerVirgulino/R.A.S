// Ativar o movimento do inimigo
obj_enemy.mover = true; // O inimigo agora pode se mover

// Trocar a sprite do inimigo para a de movimento
obj_enemy.sprite_index = spr_enemy_walk_left;

// Destruir o trigger após a ativação (opcional)
instance_destroy();
