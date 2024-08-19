// Navegação no menu
if (keyboard_check_pressed(vk_up)) {
    menu_opcao -= 1;
    if (menu_opcao < 0) menu_opcao = 1;
}

if (keyboard_check_pressed(vk_down)) {
    menu_opcao += 1;
    if (menu_opcao > 1) menu_opcao = 0;
}

// Seleção de opção
if (keyboard_check_pressed(vk_enter)) {
    if (menu_opcao == 0) {
        // Start Game: Vá para a room do jogo
        room_goto(Room_game); // é a room onde o jogo está
    } else if (menu_opcao == 1) {
        // Exit Game
        game_end();
    }
}
