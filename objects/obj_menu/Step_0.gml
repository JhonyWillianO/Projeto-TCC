// Navegação no menu
if (keyboard_check_pressed(vk_up)) {
    menu_opcao -= 1;
    if (menu_opcao < 0) menu_opcao = 2;
}

if (keyboard_check_pressed(vk_down)) {
    menu_opcao += 1;
    if (menu_opcao > 2) menu_opcao = 0;
}

// Seleção de opção
if (keyboard_check_pressed(vk_enter)) {
    if (menu_opcao == 0) {
		global.gameover = false; // Reseta o estado de game over
        global.player_vida = 3; 
        global.level = 1;
        global.pontos = 0;
		global.player_velocidade = 4;
        global.player_level_tiro = 1;
        global.player_velocidade_tiro = 10;
        global.player_cadencia = 1;
		global.fase = 1;
        // Start Game: Vá para a room do jogo
        room_goto(Room_fase_1); // é a room onde o jogo está
    } else if (menu_opcao == 1) {
        // Exit Game
        game_end();
    }else if (menu_opcao == 2) {
            // Abrir Configurações
           room_goto(Room_config);
        }
	} 
