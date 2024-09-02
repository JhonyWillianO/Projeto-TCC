if (global.pause)exit;//pausar função do game

//y += velocidade;
x += velocidade * xdirecao;

if(stop && y >= xstop){
	
	delay_stop -= 0.5;
	
	if(delay_stop <= 0){
	 
	 stop = false;
	 
	}
	 x+= 2;
}
else{
	y += velocidade;
}

delay -= 0.1;

if(delay <= 0){
	
	xdirecao = irandom_range(1,-1);
	delay = delay_diracao;
	
}

if(y >= 780){
y = -20;
}

if(x >= 1240){

x = 1;
}

if(x<=0){
	x = 250;
	
}

// Incrementa o tempo desde o último tiro
tempo_desde_ultimo_tiro += 1;

// Verifica se o jogador existe na room
if (instance_exists(obj_player)) {
    // Verifica a proximidade do jogador para decidir se deve atirar
    if (abs(x - obj_player.x) < 10) { // Ajuste o valor 10 conforme necessário

        // Verifica se já passou tempo suficiente para atirar novamente
        if (tempo_desde_ultimo_tiro >= tempo_para_proximo_tiro) {
            // O inimigo atira no player
            instance_create_layer(x, y, layer, obj_tiro_inimigo_4);

            // Verifica a direção do player para ajustar a direção do tiro
            if (obj_player.x > x) {
                direction = 0; // Direção para a direita
            } else {
                direction = 180; // Direção para a esquerda
            }

            // Reseta o temporizador para o próximo tiro
            tempo_desde_ultimo_tiro = 0;
        }
    }
}