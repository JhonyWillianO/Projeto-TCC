if (global.pause) exit; // Pausar função do game

// Define a velocidade de movimento horizontal
velocidade = 4;
direcao = 1; // 1 = direita, -1 = esquerda

// Escolhe uma altura aleatória entre 125, 150, 175 e 200
y = choose(125, 150, 175, 200); // Escolhe uma altura diretamente com `choose`

// Cria o escudo para o inimigo
meu_escudo = instance_create_layer(x, y, layer, obj_escudo_inimigo);
meu_escudo.dono = id; // Associar o escudo a este inimigo
