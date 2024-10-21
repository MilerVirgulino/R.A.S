/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



//criar timer para trocar de estado
timer_estado = game_get_speed(gamespeed_fps) * 5;
tempo_estado = timer_estado;
estado_hunt = new estado();
destino_x = 0;
destino_y = 0;
alvo = noone;


// Inherit the parent event
event_inherited();


//tudo após isso é sobrescrito




#region estado_idle

estado_idle.inicia = function()
{
	//definir a sprite
	sprite_index = spr_enemy;
	image_index = 0;

tempo_estado = timer_estado;
}

estado_idle.roda = function()
{
//DIMINUINDO TEMPO DE ESTADO
tempo_estado--;

var _tempo = irandom(tempo_estado);

if (_tempo <= 0 )
{
muda_estado(estado_walk);
}
}




#endregion





#region estado_walk

estado_walk.inicia = function()
{
sprite_index = spr_enemy_walk_left;
image_index = 0;

//reseta tempo do estado
tempo_estado = timer_estado;

//andar aleatoriamente pelo mapa

//escolhendo lugar aleatorio
destino_x = irandom(room_width);
destino_y = irandom(room_height);

}

estado_walk.roda = function()
{
tempo_estado--;
var _tempo = irandom(tempo_estado);

if (_tempo <= 0 )
	{
muda_estado(estado_idle);
	}

//indo para o meu destino enquanto desvio dos colisores
mp_potential_step_object(destino_x, destino_y, 1, obj_block);

}


#endregion


#region estado_perseguição

estado_hunt.inicia = function() {
    sprite_index = spr_enemy;
    image_index = 0;
    image_blend = c_yellow;
}

estado_hunt.roda = function() {
    // Verifica se o alvo ainda existe
    if (instance_exists(obj_personagem)) {
        alvo = obj_personagem.id;

        // Move o inimigo em direção ao alvo, evitando colisões com obj_block
        mp_potential_step_object(alvo.x, alvo.y, 3, obj_block); // Aumente a velocidade, se necessário
    } else {
        // Se o alvo não existe mais, muda para o estado "idle"
        alvo = noone;
        muda_estado(estado_idle);
    }
}

#endregion




//iniciando estado pós-modificações
inicia_estado(estado_idle);