if (global.pause)exit;//pausar função do game

velocidade = 2; // Velocidade de movimento para descer até a altura desejada
altura_parada = 100; // Altura onde o inimigo vai parar (100 pixels do topo)

tempo_para_missil = room_speed * 5; // A cada 2 segundos
tempo_desde_ultimo_missil = 0;

// Cria o escudo junto com o inimigo
meu_escudo = instance_create_layer(x, y, layer, obj_escudo_inimigo);
meu_escudo.dono = id; // Associar o escudo a este inimigo
