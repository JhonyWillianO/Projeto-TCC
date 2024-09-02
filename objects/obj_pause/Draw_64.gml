// Evento Draw GUI
if (global.pause) {
    var gui_h = display_get_gui_height();
    var gui_w = display_get_gui_width();

    draw_sprite(Sprit_txt_pause, 0, 544, 192); // Ajuste a posição conforme necessário

    // Desenhar opções do menu
    if (menu_opcao == 0) {
        draw_sprite(Sprit_pause, 0, 448, 288); // Ajuste a posição conforme necessário
    } else {
        draw_sprite_ext(Sprit_pause, 0,448, 288, 1, 1, 0, c_gray, 1);
    }

    if (menu_opcao == 1) {
        draw_sprite(Sprit_voltar, 0,861, 342 + 40); // Ajuste a posição conforme necessário
    } else {
        draw_sprite_ext(Sprit_voltar, 0, 861, 342 + 40, 1, 1, 0, c_gray, 1);
    }
	
}
