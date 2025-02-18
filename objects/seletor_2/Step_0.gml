// Seletor visível apenas se estiver na opção ativa
if (global.index == 0) {
    visible = true;
} else {
    visible = false;
}

// Lista de opções do menu
var espacamento = 50; // Espaço entre opções
var posicao_inicial_y = 300; // Posição Y da primeira opção

// Inicializa variáveis globais caso não existam
if (!variable_global_exists("menu_selecao")) {
    global.menu_selecao = 0;
    global.menu_y = posicao_inicial_y;
}

// Movimentação entre opções
if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
    global.menu_selecao -= 1;
    if (global.menu_selecao < 0) global.menu_selecao = 2; // Última opção
}

if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
    global.menu_selecao += 1;
    if (global.menu_selecao > 2) global.menu_selecao = 0; // Volta para a primeira
}

// Alvo da posição do seletor
var alvo_y = posicao_inicial_y + (global.menu_selecao * espacamento);

// Transição suave com LERP
global.menu_y = lerp(global.menu_y, alvo_y, 0.2);

// Aplicar posição suavizada ao seletor
x = seletor_1.x; // Mantém X original
y = global.menu_y; // Aplica movimento suave

// Seleção de opção com Enter ou Z
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))) {
    switch (global.menu_selecao) {
        case 0: // Iniciar jogo
            room_goto(NOME_DA_ROOM_DO_JOGO);
            break;
        case 1: // Configurações
            room_goto(NOME_DA_ROOM_DE_CONFIGURACOES);
            break;
        case 2: // Sair do jogo
            game_end();
            break;
    }
}
