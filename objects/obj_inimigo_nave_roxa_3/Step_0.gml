if (global.pause) exit; // Pausar função do game

// Atualiza o tempo restante para o próximo ataque
tempo_entre_atacas -= 1;

// Lógica de ataque
if (tempo_entre_atacas <= 0) {
    if (tiros_disparados < quantidade_tiros) {
        if (tempo_tiro <= 0) {
            // Cria um tiro na direção desejada
            var tiro = instance_create_layer(x, y, layer, obj_tiro_inimigo_4);
            tiro.direction = 270; // Ajuste a direção do tiro conforme necessário
            tiro.speed = 4; // Ajuste a velocidade do tiro conforme necessário

            // Atualiza o contador de tiros disparados
            tiros_disparados += 1;

            // Reseta o tempo para o próximo tiro
            tempo_tiro = tempo_tiro_max; // Intervalo entre os tiros (ajuste conforme necessário)
        } else {
            // Diminui o tempo até o próximo tiro
            tempo_tiro -= 1;
        }
    } else {
        // Quando todos os tiros forem disparados, retoma o movimento
        movendo = true;
        tiros_disparados = 0; // Reseta o contador de tiros disparados
        tempo_entre_atacas = 4 * room_speed; // Define o próximo intervalo de ataque
    }
} else {
    // Movimento do inimigo, se não estiver atacando
    if (movendo) {
        // Atualiza a posição
        x += velocidade * direcao_horizontal;
        y += velocidade * direcao_vertical;

        // Muda de direção ao atingir os limites da sala
        if (x > room_width - sprite_width / 2) {
            x = room_width - sprite_width / 2; // Corrige a posição para dentro da tela
            direcao_horizontal *= -1; // Inverte a direção horizontal
            y += 1; // Caí um pixel para baixo
        } else if (x < sprite_width / 2) {
            x = sprite_width / 2; // Corrige a posição para dentro da tela
            direcao_horizontal *= -1; // Inverte a direção horizontal
            y += 1; // Caí um pixel para baixo
        }

        if (y > room_height + sprite_height / 2) {
            y = -sprite_height / 2; // Reposiciona no topo
        }
    }
}

// Se o tempo do ataque acabar, retoma o movimento
if (tiros_disparados >= quantidade_tiros) {
    movendo = true;
}
