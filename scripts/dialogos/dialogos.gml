// Função que retorna o texto com base no nome do NPC
function scr_textos(npc_nome) {
    var t = [];  // Inicializa um array para armazenar os textos

    switch (npc_nome) {
        case "Quadro Negro":
            t[0] = "O quadro mostra um exercício"
			t[1]= "Um bloco que desce uma rampa com atrito...";
            t[2] = "É uma questão bem simples.";
            break;  // Adiciona ponto final para clareza

        case "computador":
            t[0] = "Este o computador" 
			t[1]= "É para os professores usarem.";
            t[2] = "Melhor não mexer nisso.";
            t[3] = "Não quero me encrencar.";
            break;

        default:
            t[0] = "Nenhum diálogo disponível.";
            break;
    }

    return t;  // Retorna o array com o texto
}
