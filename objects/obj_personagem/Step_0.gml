// Checar teclas e mouse
var tecla_cima = keyboard_check(ord("W")) || keyboard_check(vk_up);
var tecla_baixo = keyboard_check(ord("S")) || keyboard_check(vk_down);
var tecla_direita = keyboard_check(ord("D")) || keyboard_check(vk_right);
var tecla_esquerda = keyboard_check(ord("A")) || keyboard_check(vk_left);

var tecla_cima_solta = keyboard_check_released(ord("W")) || keyboard_check_released(vk_up);
var tecla_baixo_solta = keyboard_check_released(ord("S")) || keyboard_check_released(vk_down);
var tecla_direita_solta = keyboard_check_released(ord("D")) || keyboard_check_released(vk_right);
var tecla_esquerda_solta = keyboard_check_released(ord("A")) || keyboard_check_released(vk_left);

var attack = keyboard_check_pressed(ord("J")) || mouse_check_button(1);

// Determinar a direção do movimento
var move_x = tecla_direita - tecla_esquerda;
var move_y = tecla_baixo - tecla_cima;

var teclas_ativas = (move_x != 0) || (move_y != 0);
var move_dir = point_direction(0, 0, move_x, move_y);

hspd = lengthdir_x(spd * teclas_ativas, move_dir);
vspd = lengthdir_y(spd * teclas_ativas, move_dir);

// Animar o personagem
if (global.player == 1) {
    if (tecla_cima) {
        sprite_index = spr_backwalking;
    } else if (tecla_cima_solta) {
        sprite_index = spr_standingback;
    } else if (tecla_direita) {
        sprite_index = spr_rightwalking;
        image_xscale = 1;
    } else if (tecla_direita_solta) {
        sprite_index = spr_standingright;
        image_xscale = 1;
    } else if (tecla_esquerda) {
        sprite_index = spr_leftwalking;
    } else if (tecla_esquerda_solta) {
        sprite_index = spr_standingleft;
    } else if (tecla_baixo) {
        sprite_index = spr_frontwalk;
    } else if (tecla_baixo_solta) {
        sprite_index = spr_standing;
    }
} else if (global.player == 2) {
    if (tecla_cima) {
        sprite_index = spr_backwalkr;
    } else if (tecla_cima_solta) {
        sprite_index = spr_standingbackr;
    } else if (tecla_direita) {
        sprite_index = spr_rightwalkingr;
        image_xscale = 1;
    } else if (tecla_direita_solta) {
        sprite_index = spr_standingrightr;
        image_xscale = 1;
    } else if (tecla_esquerda) {
        sprite_index = spr_leftwalkingr;
    } else if (tecla_esquerda_solta) {
        sprite_index = spr_standingleftr;
    } else if (tecla_baixo) {
        sprite_index = spr_frontwalkr;
    } else if (tecla_baixo_solta) {
        sprite_index = spr_standingr;
    }
}

// Colisão e movimento
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

// Trocar de sala
if (keyboard_check(ord("R"))) {
    room_goto(room_select);
}
