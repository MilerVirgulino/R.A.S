/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Avança o índice do texto
indice_texto += 1;

if (indice_texto < array_length(dialogo_textos)) {
    texto_atual = dialogo_textos[indice_texto];  // Avança o texto
} else {
    instance_destroy()  // Esconde o diálogo
}
