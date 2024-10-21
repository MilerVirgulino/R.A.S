// Verifica se precisa inicializar
if (inicializar) {
    // Chama a função de textos e armazena o resultado em 'texto'
    texto = scr_textos(npc_nome);
    
    // Define como inicializado para não executar novamente
    inicializar = false;
}

if (keyboard_check_pressed(vk_enter)) {
    if (pagina < array_length(texto) - 1 ) {
        pagina++;
    } else {
        
        instance_destroy();  // Destroi o objeto se não houver mais páginas
    }
}


