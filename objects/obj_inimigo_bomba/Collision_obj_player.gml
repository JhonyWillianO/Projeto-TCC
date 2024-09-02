// Evento de colisão com obj_player
// Cria a explosão na camada atual do objeto
instance_create_layer(x, y, layer, obj_explosao_dano);

// Dano ao player (ajuste conforme necessário)
// Se necessário, adicione lógica de dano ao player aqui
// Exemplo:
 if (instance_exists(obj_player)) {
     global.player_vida -= 1; // Ajuste o valor de dano conforme necessário
}

// Destroi o inimigo bomba
instance_destroy();