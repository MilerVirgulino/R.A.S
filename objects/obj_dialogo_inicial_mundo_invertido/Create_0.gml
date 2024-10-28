npc_atual = "antes do jumpscare";  // Escolha o NPC
dialogo_textos = scr_textos(npc_atual);  // Armazena os textos do NPC
show_debug_message(dialogo_textos);
indice_texto = 0;  // Controlador do texto atual
dialogo_visivel = true;  // Controle de visibilidade do diálogo
    


if (is_array(dialogo_textos)) {
    show_debug_message("Array de diálogos está correto.");
} else {
    show_debug_message("dialogo_textos não é um array!");
}
