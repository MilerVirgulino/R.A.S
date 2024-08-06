if(file_exists("save.txt")) file_delete("save.txt");
ini_open("save.txt");
ini_write_real("Jogador", "x_jogador", obj_ellena.x);
ini_write_real("Jogador", "y_jogador", obj_ellena.y);
ini_close();
show_message("Jogo Salvado");