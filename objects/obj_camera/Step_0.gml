if (instance_exists(obj_rodrigo) && instance_exists(obj_ellena)) {
    // Captura as posições X e Y dos dois personagens
    var x1 = obj_rodrigo.x;
    var y1 = obj_rodrigo.y;
    var x2 = obj_ellena.x;
    var y2 = obj_ellena.y;

    // Calcula o ponto médio entre os dois personagens
    var midpoint_x = (x1 + x2) / 2;
    var midpoint_y = (y1 + y2) / 2;

    // Posiciona a câmera no ponto médio calculado
    camera_set_view_pos(camera, midpoint_x - camera_width / 2, midpoint_y - camera_height / 2);
} else if (instance_exists(obj_rodrigo)) {
    // Se só o obj_rodrigo existe, a câmera segue ele
    camera_set_view_pos(camera, obj_rodrigo.x - camera_width / 2, obj_rodrigo.y - camera_height / 2);
} else if (instance_exists(obj_ellena)) {
    // Se só o obj_ellena existe, a câmera segue ela
    camera_set_view_pos(camera, obj_ellena.x - camera_width / 2, obj_ellena.y - camera_height / 2);
}
