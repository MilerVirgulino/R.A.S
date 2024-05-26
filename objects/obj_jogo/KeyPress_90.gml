if(file_exists("save.txt")) file_delete("save.txt");
ini_open("save.txt");
ini_write_real("Jogador", "x_jogador", obj_player.x);
ini_write_real("Jogador", "y_jogador", obj_player.y);
ini_close();
show_message("Jogo Salvado");