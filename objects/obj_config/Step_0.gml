if (global.pause)exit;

// Navegação entre opções
if (keyboard_check_pressed(vk_up)) {
    menu_opcao -= 1;
    if (menu_opcao < 0) menu_opcao = 2; // Cicla entre as 3 opções
}

if (keyboard_check_pressed(vk_down)) {
    menu_opcao += 1;
    if (menu_opcao > 2) menu_opcao = 0; // Cicla entre as 3 opções
}

// Ajustar valores com vk_left e vk_right
if (keyboard_check(vk_right)) {
    if (menu_opcao == 0 && global.volume_som < volume_max) {
        global.volume_som += 1;
    } else if (menu_opcao == 1 && global.volume_musica < volume_max) {
        global.volume_musica += 1;
    } else if (menu_opcao == 2) {
        global.tela_cheia = true;
        window_set_fullscreen(true);
    }
}

if (keyboard_check(vk_left)) {
    if (menu_opcao == 0 && global.volume_som > volume_min) {
        global.volume_som -= 1;
    } else if (menu_opcao == 1 && global.volume_musica > volume_min) {
        global.volume_musica -= 1;
    } else if (menu_opcao == 2) {
        global.tela_cheia = false;
        window_set_fullscreen(false);
    }
}

// Implementar ações de confirmação ou retorno ao menu de pausa
if (keyboard_check_pressed(vk_escape)) {
    room_goto(Room_menu); // Voltar ao menu de pausa
}
