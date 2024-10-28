if (place_meeting(x, y, obj_personagem)) {
    if (keyboard_check(vk_enter)) {
        global.chave = true;
    }
}

if (global.chave) {
    instance_destroy(obj_chave);
}
