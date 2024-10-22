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
			
		case "carta 1":
			t[0]="Uma carta misteriosa";
			break;
		
		case "Miler":
			t[0]="Você quer ir ao banheiro?";
			t[1]= "Vá rápido, precisamos continuar";
			break;
			
		case "Sala dos professores":
			t[0]="Aqui diz:";
			t[1]= "\"Sala dos professores\"";
			t[2]= "\"é proibido a entrada de alunos\""
			break;
			
		case "1a serie":
			t[0]="Esta é a sala da primeira série";
			t[1]= "Parece que o professor Diogo está dando uma bela bronca na turma";
			t[2]= "Ainda bem que não é comigo!"
			t[3]= "Melhor ir logo antes que sobre pra mim!"
			break;
			
		case "6o ano":
			t[0]="Esta é a sala do 6° ano";
			t[1]= "Posso escutar a professora Patrícia dando aula";
			t[2]= "Ela parece estar falando sobre células"
			t[3]= "Como pode alguem tão pequeno parecer tão assustador?"
			break;
			
		case "7o ano":
			t[0]="Esta é a sala do 7° ano";
			t[1]= "O professor Luis Paulo está dando aula";
			t[2]= "Não dá para entender muito bem do que se trata a aula"
			t[3]= "Ele está falando em inglês..."
			break;
			
		case "8o ano":
			t[0]="Esta é a sala do 8° ano";
			t[1]= "O professor Júnior está contando alguma história";
			t[2]= "Não parece ser muito verídica..."
			
			break;



        default:
            t[0] = "Nenhum diálogo disponível.";
            break;
    }

    return t;  // Retorna o array com o texto
}
