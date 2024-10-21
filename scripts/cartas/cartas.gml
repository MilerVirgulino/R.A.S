// Função que retorna o texto da carta com base no nome da carta
function cartas(carta_nome) {
    // Inicializa a variável de texto
    var texto = "";

    // Switch para determinar o conteúdo baseado no nome da carta
    switch (carta_nome) {
        case "carta 1":
            texto = "Essa é a primeira carta.";
            break;
        case "carta 2":
            texto = "Essa é a segunda carta, cheia de segredos.";
            break;
        case "carta 3":
            texto = "Essa é a terceira carta, uma mensagem importante.";
            break;
        // Adicione mais cartas aqui conforme necessário
        default:
            texto = "Nenhum texto disponível para esta carta.";
            break;
    }

    return texto;  // Retorna o texto da carta
}
