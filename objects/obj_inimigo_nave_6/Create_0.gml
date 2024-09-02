if (global.pause) exit; // Pausar função do game

// Define a velocidade de movimento horizontal
velocidade = 2;
direcao = 1; // 1 = direita, -1 = esquerda

// Define a altura fixa de 100 pixels
y = 100;

// Define o intervalo de tempo entre os tiros
tempo_tiro = 0;
tempo_tiro_max = 60; // Tempo em frames para atirar (1 segundo a 60 FPS)
