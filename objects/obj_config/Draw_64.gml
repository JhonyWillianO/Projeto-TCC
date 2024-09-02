var gui_h = display_get_gui_height();
var gui_w = display_get_gui_width();

// Desenhar opções de configuração
draw_set_color(c_white);
draw_set_font(text_pixel);

// Desenhar volume do som
if (menu_opcao == 0) {
    draw_text(gui_w / 2 - 100, gui_h / 2 - 60, "Som: " + string(global.volume_som) + "%");
} else {
    draw_text_color(gui_w / 2 - 100, gui_h / 2 - 60, "Som: " + string(global.volume_som) + "%", c_gray, c_gray, c_gray, c_gray, 1);
}

// Desenhar volume da música
if (menu_opcao == 1) {
    draw_text(gui_w / 2 - 100, gui_h / 2, "Música: " + string(global.volume_musica) + "%");
} else {
    draw_text_color(gui_w / 2 - 100, gui_h / 2, "Música: " + string(global.volume_musica) + "%", c_gray, c_gray, c_gray, c_gray, 1);
}

// Desenhar opção de tela cheia
if (menu_opcao == 2) {
    var estado_tela = global.tela_cheia ? "Tela Cheia" : "Janela";
    draw_text(gui_w / 2 - 100, gui_h / 2 + 60, "Tela: " + estado_tela);
} else {
    var estado_tela = global.tela_cheia ? "Tela Cheia" : "Janela";
    draw_text_color(gui_w / 2 - 100, gui_h / 2 + 60, "Tela: " + estado_tela, c_gray, c_gray, c_gray, c_gray, 1);
}
