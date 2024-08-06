if(file_exists("save.txt")){
	ini_open("save.txt");
	obj_ellena.x = ini_read_real("Jogador", "x_jogador", 0);
	obj_ellena.y = ini_read_real("Jogador", "y_jogador", 0);
	ini_close();
}