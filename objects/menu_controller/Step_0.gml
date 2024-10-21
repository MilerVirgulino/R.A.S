// Evento Step do objeto controlador do menu
var spd = 0.1; // Velocidade da animação

// Atualizar o target_y de acordo com a opção selecionada
target_y = y1 + esp * selected_index; 

// Suavizar o movimento do retângulo
current_y += (target_y - current_y) * spd;
