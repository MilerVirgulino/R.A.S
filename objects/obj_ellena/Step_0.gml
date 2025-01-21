// Tecla para correr (pressionada "X")
var correr = keyboard_check(ord("X"));

// Definir a velocidade de movimento com base na tecla "X"
var velocidade = correr ? 6.0 : 3.0;  // Aumenta a velocidade para 6.0 ao correr, senão 3.0

// Verificar teclas de movimento
var tecla_cima = keyboard_check(ord("W")) || keyboard_check(vk_up);
var tecla_baixo = keyboard_check(ord("S")) || keyboard_check(vk_down);
var tecla_direita = keyboard_check(ord("D")) || keyboard_check(vk_right);
var tecla_esquerda = keyboard_check(ord("A")) || keyboard_check(vk_left);

// Normalizar a direção para evitar movimentos mais rápidos nas diagonais
var direction_x = tecla_direita - tecla_esquerda;
var direction_y = tecla_baixo - tecla_cima;
var direction_length = max(abs(direction_x), abs(direction_y));  // Para evitar o movimento mais rápido nas diagonais

if (direction_length > 0) {
    direction_x /= direction_length;  // Normaliza
    direction_y /= direction_length;  // Normaliza
}

// Calcular a direção e a velocidade final
move_dir = point_direction(0, 0, direction_x, direction_y);
hspd = direction_x * velocidade;
vspd = direction_y * velocidade;

// ** MUDANÇA DE SPRITE **
// Trocar os sprites dependendo das teclas pressionadas
if (tecla_cima) {
    sprite_index = spr_backwalking;
} else if (tecla_baixo) {
    sprite_index = spr_frontwalk;
} else if (tecla_direita) {
    sprite_index = spr_rightwalking;
    image_xscale = 1;  // Garantir que a imagem esteja virada corretamente
} else if (tecla_esquerda) {
    sprite_index = spr_leftwalking;
} else {  // Se não pressionar nada, fica parado
    if (tecla_cima) {
        sprite_index = spr_standingback;
    } else if (tecla_direita) {
        sprite_index = spr_standingright;
        image_xscale = 1;
    } else if (tecla_esquerda) {
        sprite_index = spr_standingleft;
    } else if (tecla_baixo) {
        sprite_index = spr_standing;
    }
}

// ** COLISÃO **
// Colisão horizontal
if (place_meeting(x + hspd, y, obj_block)) {
    while (!place_meeting(x + sign(hspd), y, obj_block)) {
        x += sign(hspd);
    }
    hspd = 0;
}

x += hspd;

// Colisão vertical
if (place_meeting(x, y + vspd, obj_block)) {
    while (!place_meeting(x, y + sign(vspd), obj_block)) {
        y += sign(vspd);
    }
    vspd = 0;
}

y += vspd;

// ** TECLAS PARA COMANDO DE CÂMERA OU OUTRO**
if (keyboard_check(ord("R"))) {
    room_goto(room_select);
}

// Tecla "T" para reiniciar o jogo
if (keyboard_check_pressed(ord("T"))) {
    room_restart();
}
