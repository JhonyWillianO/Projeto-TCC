// Exibe a mensagem "Wave" durante o jogo
if (level_start && global.gamestart && !instance_exists(obj_dano_inimigos) && !instance_exists(obj_chefe)) {
    draw_set_font(text_pixel);
    draw_set_color(c_red);
    draw_text(600, 290, "Wave - " + string(global.level));
    if (!global.audio_ja_tocado) {
        audio_play_sound(Suck_1, 0, false);
        global.audio_ja_tocado = true;
    }
}

// Exibe a mensagem de Game Over, se aplicável
if (global.gameover) {
    // Exibir a mensagem de Game Over
    draw_sprite(Sprit_gameover, 0, 448, 256);

    // Desenhar o botão de "Menu"
    draw_sprite(Sprit_voltar, 0, 672, 448);
}
