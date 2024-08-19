// Exibe a mensagem "Wave" durante o jogo
if (level_start && global.gamestart  && !instance_exists(obj_inimigo)
                                     && !instance_exists(obj_inimigo_azul)
                                     && !instance_exists(obj_inimigo_verde)
									 && !instance_exists(obj_chefe)) 
{
    draw_set_font(text_1);
    draw_set_color(c_red);
    draw_text(512, 228, "Wave - " + string(global.level));
}

// Exibe a mensagem de Game Over, se aplicável
if (global.gameover) {
    // Exibir a mensagem de Game Over
    draw_sprite(Sprit_gameover, 0, 448, 224);

    // Desenhar o botão de "Menu"
    draw_sprite(Sprit_reset, 0,576, 352);
}
