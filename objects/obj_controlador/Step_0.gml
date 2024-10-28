// Evento Step
if (global.parede) {
    if (instance_exists(obj_vocenaopassara)) {
        instance_destroy(obj_vocenaopassara);
        show_debug_message("Parede destruída");
    }
}

if (global.chave) {
    if (instance_exists(obj_chave)) {
        instance_destroy(obj_chave);
        show_debug_message("Chave destruída");
    }
}
