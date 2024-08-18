// Movimento lateral
x += velocidade * direcao;

// Verifica se o chefe bateu na borda da tela
if (x <= 0 || x >= room_width - sprite_width) {
    direcao = -direcao; 

}