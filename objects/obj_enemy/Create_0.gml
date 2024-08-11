/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



//criar timer para trocar de estado
timer_estado = game_get_speed(gamespeed_fps) * 5;
tempo_estado = timer_estado;

destino_x = 0;
destino_y = 0;
alvo = noone;


// Inherit the parent event
event_inherited();


//tudo após isso é sobrescrito
estado_hunt = new estado();



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
estado_hunt.inicia = function()
{
sprite_index = 	spr_enemy_walk_left
image_index = 0

image_blend = c_yellow
}

if (instance_exists(obj_ellena))
{
	alvo = obj_ellena.id
}


estado_hunt.roda = function()

{
	//se nao existe fica de boa
	if(!instance_exists(obj_ellena))
	{
		alvo = noone;
		muda_estado(estado_idle);
	}
	mp_potential_step_object(obj_ellena.x, obj_ellena.y, 1, obj_block);
	
}

#endregion




//iniciando estado pós-modificações
inicia_estado(estado_idle);