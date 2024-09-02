velocidade = random_range(1,2);
xdirecao = irandom_range(1,-1);

delay_diracao =room_speed * random_range(.5,1);
delay = delay_diracao;

alarm[0] = room_speed * random_range(1,3);

tempo_para_proximo_tiro = 2 * room_speed; // 30 segundos (em frames)
tempo_desde_ultimo_tiro = tempo_para_proximo_tiro; // Inicialmente, o tempo desde o último tiro é 0
