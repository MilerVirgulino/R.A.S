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
    if (index == i) {
        var largura_texto = string_width(opc[i]);
        var altura_texto = string_height(opc[i]);
        
        // Desenhar a caixa ao redor da opção selecionada
        draw_set_color(c_white);
        draw_rectangle(
            x1 - largura_texto / 2 - box_padding - box_width_extra / 2,  // Ponto superior esquerdo X
            y1 + esp * i - altura_texto / 2 - box_padding,               // Ponto superior esquerdo Y
            x1 + largura_texto / 2 + box_padding + box_width_extra / 2,  // Ponto inferior direito X
            y1 + esp * i + altura_texto / 2 + box_padding,               // Ponto inferior direito Y
            true // 'false' para desenhar apenas o contorno
        );
    }
    
    // Desenhar o texto da opção
    draw_set_color(c_white);
    draw_text(x1, y1 + esp * i, opc[i]);
}

draw_set_font(-1); // Restaurar a fonte padrão
