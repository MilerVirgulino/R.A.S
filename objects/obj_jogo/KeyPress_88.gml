if(file_exists("save.txt")){
	ini_open("save.txt");
	obj_player.x = ini_read_real("Jogador", "x_jogador", 0);
	obj_player.y = ini_read_real("Jogador", "y_jogador", 0);
	ini_close();
}