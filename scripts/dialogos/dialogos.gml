// Função que retorna o texto com base no nome do NPC
function scr_textos(npc_nome) {
    var t = [];  // Inicializa um array para armazenar os textos

    switch (npc_nome) {
		
		case "preludio":
			t[0] = "Ouvi dizer que aquela família fazia rituais estranhos...";
			t[1] = "É assustador saber que eles foram encontrados mortos.";
			t[2] = "E agora a escola comprou aquele espelho antigo?";
			t[3] = "Eu não consigo parar de pensar nisso.";
			t[4] = "Isso me tira o sono todas as noites";
			t[5] = "Se eu continuar sonolento assim, vou acabar me encrencando"
			t[6] = "Talvez seja melhor pedir ao professor para ir ao banheiro.";
			t[7] = "Jogar uma água no rosto deve me ajudar ficar acordado.";

			break
			
		case "Quadro Negro 8 ano":
			t[0]="Parece feito com sangue...";
			t[1]= "Não parece fresco";
			t[2]= "Parece indicar uma direção";
			break
			
		case "computador invertida":
			t[0]="Não posso pedir ajuda com isso...";
			t[1]="Não funciona";
			break;
			
		case "Quadro Negro 9ano":
			t[0]="\"Fuja\""
			t[1]="Parece escrito com sangue..."
			t[2]="..."
			t[3]="Parece seco...";
			t[4]="O que está acontecendo aqui?"
			break;
			
		case "Quadro Negro 1 serie":
			t[0]="\"ESPELHO\""
			t[1]="Deve estar se referindo ao espelho estranho..."
			t[2]="Será que foi aquilo que me trouxe aqui?"
			break;
			
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
			
		case "antes do jumpscare":
			t[0]= "Oque aconteceu...?"
			t[1]= "O que aconteceu com as luzes?."
			t[2]= "Estão fracas..."
			t[3]= "Não é apenas isso..."
			t[4]= "O chão... As paredes..."
			t[5]= "Mudaram de cor?"
			t[6]= "Definitivamente, parece outro lugar..."
			t[7]= "Não... Tenho certeza que ainda estou na escola..."
			break
			
		case "carta 1":
			t[0] = "Uma carta misteriosa...";
			t[1] = "Não sei quanto tempo estou preso aqui.";
			t[2] = "Semanas? Meses? Talvez anos.";
			t[3] = "O tempo virou uma névoa em minha mente.";
			t[4] = "Mas agora, depois de tanto, descobri uma possível saída.";
			t[5] = "Ou ao menos, parte dela.";
			t[6] = "Infelizmente, não acho que consiga sozinho.";
			t[7] = "Nunca vi outro ser humano por aqui.";
			t[8] = "Apenas sombras... e aquela criatura.";
			t[9] = "Ela rasteja nos meus pensamentos,";
			t[10] = "infiltra-se nos meus sonhos,";
			t[11] = "e transforma tudo em pesadelos.";
			t[12] = "Sei que está vindo. Posso sentir.";
			t[13] = "Não sei quanto tempo me resta.";
			t[14] = "Mas se você está lendo isso,";
			t[15] = "fuja. Fuja enquanto ainda pode.";
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
		
		case "escada normal":
		t[0]="Essa escada dá acesso ao térrio";
		t[1]="Eu só posso descer durante o intervalo";
		t[2]="Melhor ir logo ao banheiro!";
		t[3]="O professor pediu para não demorar...";
		break;
		
		case "pare":
		t[0]="Deveria falar com a professora antes";
		break;
		
		case "9ano":
		t[0]="Tenho que ir ao banheiro";
		break;
		
		case "personagem":
	    t[0] = "VOCÊ - - Com licença, professora...";
	   
	    break;




        default:
            t[0] = "Nenhum diálogo disponível.";
            break;
    }

    return t;  // Retorna o array com o texto
}
