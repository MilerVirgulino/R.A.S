// Verifica se o jogador está perto o suficiente
if (point_distance(x, y, obj_jogador.x, obj_jogador.y) < 50) {
    obj_dialogo.texto_atual = "Bom dia, Ellena!"; // Texto que será exibido
    obj_dialogo.mostrando_dialogo = true;
    obj_dialogo.indice_letra = 0;
    obj_dialogo.timer_texto = 0;
}
