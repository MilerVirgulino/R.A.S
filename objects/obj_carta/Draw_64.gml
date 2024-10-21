// Evento Draw de obj_dialogo
draw_self(); // Desenha a própria sprite do objeto

// Se você quiser centralizar a carta na tela, você pode ajustar a posição
var x_center = (display_get_width() / 2);
var y_center = display_get_height() / 2;

draw_sprite(spr_sprite_carta, 0, x_center, y_center); // Substitua 'spr_carta' pelo nome do seu sprite

