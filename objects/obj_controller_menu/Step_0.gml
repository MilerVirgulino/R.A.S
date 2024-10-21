// Navegar com as teclas de seta
if (keyboard_check_pressed(vk_up)) {
    selected_index -= 1;
    if (selected_index < 0) {
        selected_index = array_length(menu_items) - 1; // Volta ao último item
    }
}

if (keyboard_check_pressed(vk_down)) {
    selected_index += 1;
    if (selected_index > array_length(menu_items) - 1) {
        selected_index = 0; // Volta ao primeiro item
    }
}

// Seleção com Enter
if (keyboard_check_pressed(vk_enter)) {
    var selected_button = menu_items[selected_index];
    // Chame a função de ação do botão selecionado diretamente
    with (selected_button) {
        if (id == obj_button_play) {
            room_goto(room_game); // Ação para o botão "Play"
        } else if (id == obj_button_quit) {
            game_end(); // Ação para o botão "Quit"
        }
        // Para outros botões, você pode adicionar mais condições
    }
}
