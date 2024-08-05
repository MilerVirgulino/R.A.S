// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function estado() constructor
{
	static inicia = function() {};
	static roda = function() {};
	static finaliza = function() {};
}

//iniciando estado

function inicia_estado (_estado)
{
	estado_atual = _estado;
	
	estado_atual.inicia();
}


//rodando estado

function roda_estado()
{
estado_atual.roda();
}

//mudando estado

function muda_estado(_estado)
{
//finaliza
estado_atual.finaliza();
//vai para o próximo
estado_atual = _estado
//inicia proximo estado
estado_atual.inicia();
	
}