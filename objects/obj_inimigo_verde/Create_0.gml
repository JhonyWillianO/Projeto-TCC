velocidade = random_range(2,3);
xdirecao = irandom_range(2,-2);

delay_diracao =room_speed * choose(1,.5,.25,.75);
delay = delay_diracao;

alarm[0] = room_speed * random_range(1,2);

tempo_para_proximo_tiro = 2 * room_speed; // 30 segundos (em frames)
tempo_desde_ultimo_tiro = tempo_para_proximo_tiro; // Inicialmente, o tempo desde o último tiro é 0
