// Evento Step
if (global.pause) exit; // Pausar função do game

// Verifica se a vida do inimigo acabou
if (vida <= 0) {
    // Cria dois inimigos menores apenas ao final do processo de destruição
    var inimigo1 = instance_create_layer(x - 50, y, layer, obj_inimigo_nave_roxa_3);
    var inimigo2 = instance_create_layer(x + 50, y, layer, obj_inimigo_nave_roxa_3);
    instance_destroy(); // Destroi o inimigo
    exit;
}

// Movimento vertical do inimigo
if (y < altura_parada) {
    y += velocidade; // O inimigo desce até alcançar a altura definida
} else {
    // Inimigo parou na altura definida, continua a criação dos inimigos menores
    // O alarme já está configurado para criar inimigos menores a cada intervalo
}
