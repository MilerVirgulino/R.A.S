// Inicializa as variáveis
texto = ""; // Texto a ser exibido
pagina = 0; // Página do diálogo
inicializar = true; // Para verificar se a inicialização ocorreu

// Atribui o nome da carta, se existir
if (carta_nome != undefined) {
    texto = cartas(carta_nome); // Chama a função 'cartas' e armazena o texto retornado
    
    // Atribui a sprite da carta
    switch (carta_nome) {
        case "carta 1":
            sprite_index = spr_carta_1; // Substitua 'spr_carta_1' pelo nome da sua sprite
            break;
        case "carta 2":
            sprite_index = spr_carta_2; // Adicione sprites para outras cartas conforme necessário
            break;
        // Adicione mais cartas conforme necessário
        default:
            sprite_index = spr_carta_default; // Sprite padrão se nenhuma carta for encontrada
            break;
    }
} else {
    texto = "Nenhum texto disponível."; // Mensagem padrão
}
