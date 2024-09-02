// No evento Step do chefe
if (global.pause) exit;

global.chefe_tempo_de_vida += 1; // Incrementa o tempo de vida do chefe

// Movimento lateral
x += velocidade * direcao;

// Verifica se o chefe bateu na borda da tela
if (x <= 0 || x >= room_width - sprite_width) {
    direcao = -direcao;
}

// Incrementa o tempo desde o último tiro
tempo_desde_ultimo_tiro += 1;
global.chefe_tempo_de_vida += 1; // Incrementa o tempo de vida do chefe

// Verifica se o jogador existe na room
if (instance_exists(obj_player)) {
    // Verifica a proximidade do jogador para decidir se deve atirar
    if (abs(x - obj_player.x) < 10) {
        // Verifica se já passou tempo suficiente para atirar novamente
        if (tempo_desde_ultimo_tiro >= tempo_para_proximo_tiro) {
            instance_create_layer(x, y, layer, obj_tiro_boss);
            // Direção do tiro
            if (obj_player.x > x) {
                direction = 0; // Direção para a direita
            } else {
                direction = 180; // Direção para a esquerda
            }
            // Reseta o temporizador para o próximo tiro
            tempo_desde_ultimo_tiro = 0;
        }
    }
}
