indice_texto += 1;
if (indice_texto >= array_length(dialogo_textos)) {
    room_goto(room_cutscenezoi);  // Vai para a próxima sala após os diálogos
} else {
    texto_atual = dialogo_textos[indice_texto];  // Avança o texto
}
