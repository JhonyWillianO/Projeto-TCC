// Variáveis do chefe
if (!global.chefe_experiencia_inicializada) {
    global.chefe_dificuldade = 1;
    global.chefe_experiencia_inicializada = true;
} else {
    global.chefe_dificuldade += 1; // Incrementa a dificuldade a cada aparição
}

// Ajusta as características do chefe com base na dificuldade
vida = 100 * global.chefe_dificuldade;
velocidade = 4 + (global.chefe_dificuldade - 1);
direcao = 1;

tempo_para_proximo_tiro = 1 * room_speed; // Tempo do tiro
tempo_desde_ultimo_tiro = tempo_para_proximo_tiro; // Inicialmente, o tempo desde o último tiro é 0

// Inicializa o tempo de vida do chefe
global.chefe_tempo_de_vida = 0;
