if (global.pause)exit;//pausar função do game
// Evento Step
if (y < altura_parada) {
    y += velocidade; // O inimigo desce até alcançar a altura definida
} else {
    // Inimigo parou na altura definida, agora pode lançar mísseis
    tempo_desde_ultimo_missil += 1;

    if (tempo_desde_ultimo_missil >= tempo_para_missil) {
        // Cria um míssil que segue o player
        var missil = instance_create_layer(x, y, layer, obj_missil_seguidor);
        missil.target = obj_player; // Define o player como alvo do míssil
        
        tempo_desde_ultimo_missil = 0; // Reseta o temporizador
    }
}