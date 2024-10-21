// Define a cor do texto
draw_set_color(c_black);

// Desenha a sprite da carta
if (sprite_index != undefined) {
    draw_sprite(sprite_index, 0, x + 32, y + 32); // Ajuste a posição conforme necessário
}

// Verifica se o texto não está vazio e desenha
if (texto != "") {
    draw_text_ext(_xx + 32, _yy + 80, texto, 16, _guil - 64); // Ajusta a posição do texto
} else {
    draw_text(_xx + 32, _yy + 32, "Nenhum texto disponível.");
}
