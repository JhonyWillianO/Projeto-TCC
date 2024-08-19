// Desenhar a opção "Start Game"
if (menu_opcao == 0) {
    draw_sprite(Sprit_Start, 0,192, 256); // Posição da opção "Start Game"
} else {
    draw_sprite_ext(Sprit_Start, 0, 192, 256, 1, 1, 0, c_gray, 1); // Desenho em cinza se não selecionado
}

// Desenhar a opção "Exit Game"
if (menu_opcao == 1) {
    draw_sprite(Sprit_exit, 0, 192, 480); // Posição da opção "Exit Game"
} else {
    draw_sprite_ext(Sprit_exit, 0, 192, 480, 1, 1, 0, c_gray, 1); // Desenho em cinza se não selecionado
}
