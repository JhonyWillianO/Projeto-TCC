// Evento Step
if (keyboard_check_pressed(vk_escape)) {
    global.pause = !global.pause;
    
    if (!global.pause) {
        // Apenas reseta a visibilidade ou muda a lógica do menu sem destruir o objeto
        // Não destrua o objeto aqui para garantir que ele possa ser usado para pausar novamente
        // instance_destroy(); // Remova esta linha
    }
}

if (global.pause) {
    // Navegação no menu de pausa
    if (keyboard_check_pressed(vk_left)) {
        menu_opcao -= 1;
        if (menu_opcao < 0) menu_opcao = 1; // Assume que há 3 opções
    }

    if (keyboard_check_pressed(vk_right)) {
        menu_opcao += 1;
        if (menu_opcao > 1) menu_opcao = 0; // Cicla entre as opções
    }

    // Seleção de opção
    if (keyboard_check_pressed(vk_enter)) {
        if (menu_opcao == 0) {
            // Voltar ao Jogo
            global.pause = false;
        } else if (menu_opcao == 1) {
            // Voltar ao Menu
            global.pause = false;
            room_goto(Room_menu);
        }
    }
}
