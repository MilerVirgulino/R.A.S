draw_set_font(Font1);

var largura = display_get_gui_width();
var altura = display_get_gui_height();

var x1 = largura / 2;
var y1 = altura / 2;
var esp = 80; // Espaçamento entre as opções

var box_padding = 5;
var box_width_extra = 150; // Valor extra para aumentar a largura da caixa

for (var i = 0; i < opc_max; i++) {
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    
    // Verificar se a opção atual é a selecionada
    if (global.index == i) {
        
        draw_set_color(c_red);
       
    }else{
	draw_set_color(c_white)
	}
    
    // Desenhar o texto da opção

    draw_text(x1, y1 + esp * i, opc[i]);
}

draw_set_font(-1); // Restaurar a fonte padrão
