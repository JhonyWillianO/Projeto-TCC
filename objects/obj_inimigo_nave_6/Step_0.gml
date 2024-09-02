if (global.pause) exit; // Pausar função do game

// Verifica a distância ao player
var dist = point_distance(x, y, obj_player.x, obj_player.y);

if (dist < 635) { // Se o player estiver a menos de 635 pixels
    velocidade = 0; // Para de se mover

    // Verifica o tempo para atirar
    if (tempo_tiro <= 0) {
        // Definir as posições das armas em relação à posição do inimigo
        var arma1_x = x - 66; // Posição X da arma esquerda (metade da largura - 66)
        var arma1_y = y + 46; // Posição Y da arma esquerda (altura / 2)
        var arma2_x = x + 66; // Posição X da arma direita (metade da largura + 66)
        var arma2_y = y + 46; // Posição Y da arma direita (altura / 2)

        // Criar o primeiro tiro na direção do player
        var tiro1 = instance_create_layer(arma1_x, arma1_y, layer, obj_tiro_inimigo_quadrado);
        tiro1.direction = point_direction(arma1_x, arma1_y, obj_player.x, obj_player.y);
        tiro1.speed = 4;

        // Criar o segundo tiro na direção do player
        var tiro2 = instance_create_layer(arma2_x, arma2_y, layer, obj_tiro_inimigo_quadrado);
        tiro2.direction = point_direction(arma2_x, arma2_y, obj_player.x, obj_player.y);
        tiro2.speed = 4;

        tempo_tiro = tempo_tiro_max; // Reinicia o tempo para o próximo tiro
    } else {
        tempo_tiro -= 1; // Diminui o tempo até o próximo tiro
    }
} else {
    // Movimentação normal se o player estiver fora do alcance
    velocidade = 3;
    x += velocidade * direcao;

    // Muda de direção ao atingir os limites da sala
    if (x > room_width - sprite_width/2 || x < sprite_width/2) {
        direcao *= -1; // Inverte a direção
    }
}
