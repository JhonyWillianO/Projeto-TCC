if (global.pause)exit;//pausar função do game

y += velocidade;
x += velocidade * xdirecao;

delay -= 0.1;

if(delay){
	
	xdirecao = irandom_range(1,-1);
	delay = delay_diracao;
	
}

if(y >= 769){
y = -20;
}

if(x >= 1337){

x = 1;
}

if(x<=0){
	x = 254;
	
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
            instance_create_layer(x, y, layer, obj_tiro_inimigo_2);

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