/// @description Verifica se precisa inicializar e define a mensagem
if (inicializar) {
    // Chama a função para preencher o texto das cartas
    // Se 'carta_npc' é a variável que contém a referência à carta
    texto = "Você encontrou a carta: " + carta_nome; // Define a mensagem a ser exibida
    inicializar = false; // Marca como inicializado para não executar novamente
}
if(keyboard_check(vk_enter)){
	
	show_debug_log("destruindo");
instance_destroy();	
}