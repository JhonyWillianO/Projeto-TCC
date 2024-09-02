// Desenhar a opção "Start Game"

if (menu_opcao == 0) {
    draw_sprite(Sprit_Start, 0,480, 320); // Posição da opção "Start Game"
} else {
    draw_sprite_ext(Sprit_Start, 0, 480, 320, 1, 1, 0, c_gray, 1); // Desenho em cinza se não selecionado
}

// Desenhar a opção "Exit Game"
if (menu_opcao == 1) {
    draw_sprite(Sprit_sair, 0, 480, 512); // Posição da opção "Exit Game"
} else {
    draw_sprite_ext(Sprit_sair, 0, 480, 512, 1, 1, 0, c_gray, 1); // Desenho em cinza se não selecionado
}
if (menu_opcao == 2) {
        draw_sprite(Sprit_config, 0,1152,640); // Posição da opção "Configurações"
    } else {
        draw_sprite_ext(Sprit_config, 0, 1152, 640, 1, 1, 0, c_gray, 1); // Em cinza se não selecionado
    }