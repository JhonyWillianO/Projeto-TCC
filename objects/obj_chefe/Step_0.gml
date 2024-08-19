// Movimento lateral
x += velocidade * direcao;

// Verifica se o chefe bateu na borda da tela
if (x <= 0 || x >= room_width - sprite_width) {
    direcao = -direcao; 

}

if (instance_exists(obj_nave)) {
    if (abs(x - obj_nave.x) < 10) { // Ajuste o valor 10 conforme necessário para a precisão
        // O boss atira no player
        instance_create_layer(x, y, layer, obj_tiro_boss); // Crie um novo tipo de tiro para o boss

        // Verifica direção do player para ajustar a direção do tiro
        if (obj_nave.x > x) {
            direction = 0; // Direção para a direita
        } else {
            direction = 180; // Direção para a esquerda
        }
    }
}

// No evento de destruição do chefe
if (vida <= 0) {
    instance_destroy();
    global.boss_spawned = false; // Permite que as waves continuem
    pode_criar_inimigos = true; // Continua as waves normais
}

if (!instance_exists(obj_nave)) {
instance_destroy();
}