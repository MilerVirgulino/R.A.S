
if (global.player == 1) {

	
var tecla_cima = keyboard_check(ord("W")) || keyboard_check(vk_up);
var tecla_baixo = keyboard_check(ord("S")) || keyboard_check(vk_down);
var tecla_direita = keyboard_check(ord("D")) ||keyboard_check(vk_right);
var tecla_esquerda = keyboard_check(ord("A")) || keyboard_check(vk_left);
var Tecla_cima_solta = keyboard_check_released(ord("W")) || keyboard_check_released(vk_up)
var tecla_baixo_solta = keyboard_check_released(ord("S")) || keyboard_check_released(vk_down)
var tecla_direita_solta = keyboard_check_released (ord("D")) || keyboard_check_released (vk_right);
var tecla_esquerda_solta = keyboard_check_released(ord("A")) || keyboard_check_released(vk_left);
var attack = keyboard_check_pressed(ord("J")) || mouse_check_button(1)

var teclas=tecla_direita-tecla_esquerda !=0	or tecla_baixo - tecla_cima !=0;

move_dir = point_direction(0,0,tecla_direita - tecla_esquerda,tecla_baixo - tecla_cima)

hspd = lengthdir_x(spd* teclas,move_dir);
vspd = lengthdir_y(spd* teclas,move_dir);

//Sprites
{
if (tecla_cima){
	sprite_index = spr_backwalking;
}

if (Tecla_cima_solta){
	sprite_index = spr_standingback;
}

if (tecla_direita){
	sprite_index = spr_rightwalking;
	image_xscale = 1
}

if (tecla_direita_solta){
	sprite_index = spr_standingright;
	image_xscale = 1
}

if (tecla_esquerda){
	sprite_index = spr_leftwalking;
}

if (tecla_esquerda_solta){
	sprite_index = spr_standingleft;
}

if (tecla_baixo){
	sprite_index = spr_frontwalk;
}

if (tecla_baixo_solta){
	sprite_index = spr_standing;
}

//colisão a partir daqui
//colisão horizontal
if(place_meeting(x+hspd,y,obj_block)){
	while(!place_meeting(x+sign(hspd),y,obj_block)){
		x=x + sign(hspd);
	}
	hspd=0
}

x+=hspd;

if(place_meeting(x,y+vspd,obj_block)){
	while(!place_meeting(x,y+sign(vspd),obj_block)){
		y=y + sign(vspd);
	}
	vspd=0
}

y+=vspd;}

if keyboard_check(ord("R")){
	room_goto(room_select)
}
// Verifica se a tecla "T" está sendo pressionada
if (keyboard_check_pressed(ord("T"))) {
    room_restart(); 
}

}

if (global.player == 2) {
	var tecla_cima = keyboard_check(ord("W")) || keyboard_check(vk_up);
var tecla_baixo = keyboard_check(ord("S")) || keyboard_check(vk_down);
var tecla_direita = keyboard_check(ord("D")) ||keyboard_check(vk_right);
var tecla_esquerda = keyboard_check(ord("A")) || keyboard_check(vk_left);
var Tecla_cima_solta = keyboard_check_released(ord("W")) || keyboard_check_released(vk_up)
var tecla_baixo_solta = keyboard_check_released(ord("S")) || keyboard_check_released(vk_down)
var tecla_direita_solta = keyboard_check_released (ord("D")) || keyboard_check_released (vk_right);
var tecla_esquerda_solta = keyboard_check_released(ord("A")) || keyboard_check_released(vk_left);

var teclas=tecla_direita-tecla_esquerda !=0	or tecla_baixo - tecla_cima !=0;

move_dir = point_direction(0,0,tecla_direita - tecla_esquerda,tecla_baixo - tecla_cima)

hspd = lengthdir_x(spd* teclas,move_dir);
vspd = lengthdir_y(spd* teclas,move_dir);

//Sprites
{
if (tecla_cima){
	sprite_index = spr_backwalkr;
}

if (Tecla_cima_solta){
	sprite_index = spr_standingbackr;
}

if (tecla_direita){
	sprite_index = spr_rightwalkingr;
	image_xscale = 1
}

if (tecla_direita_solta){
	sprite_index = spr_standingrightr;
	image_xscale = 1
}

if (tecla_esquerda){
	sprite_index = spr_leftwalkingr;
}

if (tecla_esquerda_solta){
	sprite_index = spr_standingleftr;
}

if (tecla_baixo){
	sprite_index = spr_frontwalkr;
}

if (tecla_baixo_solta){
	sprite_index = spr_standingr;
}

//colisão a partir daqui
//colisão horizontal
if(place_meeting(x+hspd,y,obj_block)){
	while(!place_meeting(x+sign(hspd),y,obj_block)){
		x=x + sign(hspd);
	}
	hspd=0
}

x+=hspd;

if(place_meeting(x,y+vspd,obj_block)){
	while(!place_meeting(x,y+sign(vspd),obj_block)){
		y=y + sign(vspd);
	}
	vspd=0
}

y+=vspd;}

//Coloquei para testar a seleção, tipo uma devs room
if keyboard_check(ord("R")){
	room_goto(room_select)
}
}


//Diálogos a partir daqui

if (distance_to_object(obj_objetos_com_dialogo) <= 2) {
    if (keyboard_check_pressed(vk_enter)) {
        var npc_ = instance_nearest(x, y, obj_objetos_com_dialogo);
        var dialogo_inst = instance_create_layer(x, y, "dialogo", obj_dialogo);
        
        dialogo_inst.npc_nome = npc_.nome;  // Atribuir o nome do NPC ao objeto de diálogo
    }
}


//degub para mostrar o coordenadas 
// Pega as coordenadas do mouse
var mouse_x_coord = mouse_x;
var mouse_y_coord = mouse_y;

// Define a cor do texto
draw_set_color(c_white);

// Desenha o texto com as coordenadas do mouse na tela
show_debug_message("Mouse X: " + string(mouse_x) + ", Mouse Y: " + string(mouse_y));



