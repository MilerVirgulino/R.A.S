// Atualizar posição da animação do retângulo
target_y = y1 + selected_index * esp; // Novo alvo baseado no item selecionado
rect_y = lerp(rect_y, target_y, transition_speed); // Atualizar a posição com transição suave
