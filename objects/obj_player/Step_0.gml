//variável de movimentação com setas e wasd
var cima = keyboard_check(vk_up) || keyboard_check(ord("W"));

var baixo = keyboard_check(vk_down) || keyboard_check(ord("S"));

var direita = keyboard_check(vk_right) || keyboard_check(ord("D"));

var esquerda = keyboard_check(vk_left) || keyboard_check(ord("A"));
 
//ação de se movimentar, se alguma variável, então sua velocidade será igual a moveSpeed negativo ou positivo.
if cima
{
	ySpeed = -moveSpeed
}

if baixo
{
	ySpeed = +moveSpeed
}

if direita
{
	xSpeed = +moveSpeed
	image_xscale = -1
}

if esquerda
{
	xSpeed = -moveSpeed
	image_xscale = 1
}

// se não direita, não esquerda, não cima e não baixo então as velocidades são zero.
if (!direita && !esquerda && !cima && !baixo) {
	xSpeed = 0;
	ySpeed = 0;
}

if (!direita && !esquerda) {
	xSpeed = 0}
	
if (!cima && !baixo) {
	ySpeed = 0}




//colisão a partir daqui
//colisão horizontal
if(place_meeting(x+xSpeed,y,obj_block)){
	while(!place_meeting(x+sign(xSpeed),y,obj_block)){
		x=x + sign(xSpeed);
	}
	xSpeed=0
}

x+=xSpeed;

if(place_meeting(x,y+ySpeed,obj_block)){
	while(!place_meeting(x,y+sign(ySpeed),obj_block)){
		y=y + sign(ySpeed);
	}
	ySpeed=0
}

y+=ySpeed;