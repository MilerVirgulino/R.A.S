if (!mostrando_dialogo) {
    texto_atual = "Opa, Ellena!Precisa de alguma coisa?";
    mostrando_dialogo = true;
    indice_letra = 0;
    timer_texto = 0;
} else if (indice_letra >= string_length(texto_atual)) {
    mostrando_dialogo = false; // Fecha o diálogo se já terminou
}
