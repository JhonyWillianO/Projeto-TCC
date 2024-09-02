// Evento Create
velocidade = 1; // Velocidade do míssil
target = noone; // Alvo inicial (será o player)
tempo_de_vida = room_speed * 6; // O míssil dura 6 segundos (ajuste conforme necessário)

// Configura o alarme para destruir o míssil após o tempo de vida
alarm[0] = tempo_de_vida;

var som_tiro = choose(snd_tiro_inimigo_1,snd_tiro_inimigo_2);
audio_play_sound(som_tiro,2,false);