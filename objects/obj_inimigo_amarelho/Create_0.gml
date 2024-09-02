velocidade = random_range(0.75,1);
xdirecao = irandom_range(1,-1);

delay_diracao =room_speed * random_range(.4,.8);
delay = delay_diracao;

stop = true;
xstop = choose(250,350,450,500,550,600,800); 

delay_stop = room_speed * choose(3,4,5);

alarm[0] = room_speed * random_range(1,3);

tempo_para_proximo_tiro = 2 * room_speed; // 30 segundos (em frames)
tempo_desde_ultimo_tiro = tempo_para_proximo_tiro; // Inicialmente, o tempo desde o último tiro é 0



