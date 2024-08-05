//T
//Iniciando o padrão de estados.


function estado() constructor
{
	//inicia estado
	static inicia = function() {};
	//roda o estado
	static roda = function() {};
	//Finaliza o estado
	static finaliza = function() {};
}

//funções para o gerenciador de estados


//Iniciando Estado
function inicia_estado(_estado)
{
	//PEGANDO ESTADO QUE PASSEI
	estado_atual = _estado;
	
	//ativando estado que eu passei
	estado_atual.inicia();
}

//rodando estado
function roda_estado()
{
	estado_atual.roda();
}

//mudando de estado
function muda_estado(_estado)
{
	//FINALIZA ATUAL
	estado_atual.finaliza();
	//VAI PARA O PROXIMO
	estado_atual = _estado;
	//INICIA PROXIMO ESTADO
	estado_atual.inicia();
}