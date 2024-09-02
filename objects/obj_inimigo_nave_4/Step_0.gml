if (global.pause) exit; // Pausar função do game

// Movimento horizontal
x += velocidade * direcao;

// Muda de direção ao atingir os limites da sala
if (x > room_width - sprite_width/2 || x < sprite_width/2) {
    direcao *= -1; // Inverte a direção
}

// Mantém o escudo na mesma posição do inimigo
if (instance_exists(meu_escudo)) {
    meu_escudo.x = x;
    meu_escudo.y = y;
}
