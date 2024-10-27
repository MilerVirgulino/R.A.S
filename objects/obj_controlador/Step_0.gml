// Objeto: obj_controlador - Evento Step
if (global.parede) {
    if (instance_exists(obj_vocenaopassara)) {
        instance_destroy(obj_vocenaopassara);
        show_debug_message("Parede destruída");
    }
}
