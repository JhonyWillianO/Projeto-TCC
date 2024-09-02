if (global.pause) exit; // Pausar função do game

// Define a vida inicial e outras variáveis
vida = 10;

// Configura o movimento e o tempo de ataque
velocidade = 1; // Velocidade de movimentação
tempo_entre_atacas = 6 * room_speed; // 15 segundos
tempo_tiro = 0; // Inicializa o tempo de tiro
quantidade_tiros = 20; // Número de tiros que o inimigo irá disparar
tiros_disparados = 0; // Contador de tiros disparados

// Inicializa a direção de movimento
direcao_horizontal = 1; // 1 = direita, -1 = esquerda
direcao_vertical = 1; // 1 = baixo, -1 = cima
movendo = true; // Define se o inimigo está se movendo


