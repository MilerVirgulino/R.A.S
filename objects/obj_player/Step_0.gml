var tecla_cima = keyboard_check(ord("W")) || keyboard_check(vk_up);
var tecla_baixo = keyboard_check(ord("S")) || keyboard_check(vk_down);
var tecla_direita = keyboard_check(ord("D")) ||keyboard_check(vk_right);
var tecla_esquerda = keyboard_check(ord("A")) || keyboard_check(vk_left);
var Tecla_cima_solta = keyboard_check_released(ord("W")) || keyboard_check_released(vk_up)
var tecla_baixo_solta = keyboard_check_released(ord("S")) || keyboard_check_released(vk_down)
var tecla_direita_solta = keyboard_check_released (ord("D")) || keyboard_check_released (vk_right);
var tecla_esquerda_solta = keyboard_check_released(ord("A")) || keyboard_check_released(vk_left);
var attack = keyboard_check_pressed(ord("j"))

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

//tiro porrada e bomba
if attack{
	hspd=0
	image_index = spr_topdasgalaxiasdeataque

}



