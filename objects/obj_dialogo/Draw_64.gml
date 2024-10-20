// Pega a largura e altura da tela
var _guil = display_get_width();
var _guia = display_get_height();

// Define a posição e cor do retângulo
var _xx = 0;
var _yy = _guia - 250;  // A altura do retângulo será 250px a partir da parte inferior
var _c = c_white;  // Cor branca para o fundo

// Define a cor do retângulo e desenha o retângulo preenchido
draw_set_color(_c);
draw_set_font(fnt_dialogo);
draw_rectangle(_xx, _yy, _guil, _guia, false);

// Define a cor do texto para que ele seja visível
draw_set_color(c_black);

// Verifica se o array 'texto' foi preenchido corretamente
if (is_array(texto) && array_length(texto) > 0) {
    // Calcula a largura total do texto (usando string_width para largura do texto)
    var text_width = string_width(texto[pagina]);

    // Desenha o texto centralizado na caixa de diálogo
    draw_text_ext(_xx + ((_guil - text_width) / 2)-100, _yy + 32, texto[pagina], 16, _guil - 64);
} else {
    draw_text(_xx + 32, _yy + 32, "Nenhum texto disponível.");
}
