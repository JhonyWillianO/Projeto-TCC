// Evento Create do obj_inimigo_nave_roxa_3
// Inicializa as variáveis de movimento
velocidade = 2; // Ajuste a velocidade conforme necessário
direcao_horizontal = 1; // Inicializa a direção horizontal
direcao_vertical = 1; // Inicializa a direção vertical

// Inicializa as variáveis de tiro
tempo_entre_atacas = 60; // Intervalo entre os ataques, ajusta conforme necessário
tempo_tiro_max = 5; // Tempo máximo entre os tiros
tempo_tiro = tempo_tiro_max; // Tempo restante até o próximo tiro
tiros_disparados = 0; // Contador de tiros disparados
quantidade_tiros = 3; // Quantidade total de tiros por ataque
movendo = true; // Define se o inimigo está em movimento
