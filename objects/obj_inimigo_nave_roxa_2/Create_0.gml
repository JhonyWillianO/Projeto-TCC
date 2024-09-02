if (global.pause) exit; // Pausar função do game

// Define a vida inicial do inimigo
vida = 3;

// Inicializa as variáveis
velocidade = 2; // Velocidade de movimento para descer até a altura desejada
altura_parada = 100; // Altura onde o inimigo vai parar (100 pixels do topo)
tempo_para_criar_inimigo = 5 * room_speed; // 10 segundos de espera (ajuste conforme necessário)
alarm[0] = tempo_para_criar_inimigo; // Configura o alarme para o tempo de criação dos inimigos menores
