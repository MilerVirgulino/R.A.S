//Obtive através de um canal do youtube pesquisando sobre estados dos inimigos.
//Funciona para gerenciar os estados que as coisas estão; Inicia um estado, roda e finaliza ele.

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