/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
event_inherited();

//Iniciando Estado por padrão
inicia_estado(estado_idle);	

#region estado_idle

estado_idle.inicia = function()
{
	image_blend = c_red;
}

estado_idle.roda = function()
{
image_blend = c_red;
}
#endregion
