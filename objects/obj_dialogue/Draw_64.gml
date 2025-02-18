if (mostrando_dialogo) {
    draw_set_color(c_white);
    draw_rectangle(50, 300, 450, 380, false); // Caixa de diálogo
    draw_set_color(c_black);
    draw_text(60, 320, string_copy(texto_atual, 1, indice_letra));
    
    // Controla a velocidade da exibição do texto
    if (indice_letra < string_length(texto_atual)) {
        timer_texto += 1;
        if (timer_texto >= velocidade_texto) {
            indice_letra += 1;
            timer_texto = 0;
        }
    }
}
