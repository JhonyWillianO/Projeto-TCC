if (global.pause) exit; // Pausar função do game

// Verifica se o jogador perdeu todas as vidas
if (global.player_vida <= 0) {
    global.gamestart = false; // Desativa o início do jogo
    instance_destroy(obj_player);
    instance_destroy(obj_dano_inimigos);
    if (!global.gameover) {
        global.gameover = true;
        audio_stop_all(); // Para a música atual
        audio_play_sound(snd_Mission_Over, 3, false); // Toca o som de game over
    }
}

// Exibe a tela de Game Over e verifica se a tecla Enter é pressionada e reseta status 
if (global.gameover) {
    if (keyboard_check_pressed(vk_enter)) {
        global.gameover = false; // Reseta o estado de game over
        global.player_vida = 3; 
        global.level = 1;
        global.pontos = 0;
        global.player_velocidade = 4;
        global.player_level_tiro = 1;
        global.player_velocidade_tiro = 10;
        global.player_cadencia = 1;
		global.chefe_fase = 1;
        pontos_para_vida = meta_pontos; // Reseta a meta para a próxima vida extra
        room_goto(Room_menu); // Volta para o menu principal
    }
    exit; // Pausa a execução do restante do código no Step
}

// Se o player foi destruído e ainda tem vidas
if (!instance_exists(obj_player) && global.player_vida > 0 && !global.gameover) {
    instance_create_layer(670, 740, layer, obj_player); // Recria o player
    with (obj_player) {
        invulneravel = true; // Ativa invulnerabilidade temporária
        pode_piscar = true; // Ativa o piscar
        alarm[0] = room_speed * 3; // Invulnerabilidade por 3 segundos
    }
}

// Se player existir da play
if (instance_exists(obj_player)) {
    global.gamestart = true;
    level_start = true;
}

// Verifica se a wave terminou e prepara para liberar inimigos
if (level_start && !instance_exists(obj_dano_inimigos) && !instance_exists(obj_chefe)) {
    delay_start -= 1.20;
    if (delay_start <= 0) {
        inimigo_liberado = true;
        delay_start = delay;
    }
}

// Controle do spawn de inimigos e bosses
if (pode_criar_inimigos && global.gamestart && !global.boss_spawned) {
    var repetir = 2 + global.level;

    repeat(repetir) {
        criar_inimigos_wave();
    }

    pode_criar_inimigos = false;
    inimigo_liberado = false;
    global.level++;
    global.audio_ja_tocado = false;
}

/// Verifica se o boss deve aparecer na wave 6
if (global.level == 6 && !global.boss_spawned) {
    // Remove todos os inimigos existentes
    with (obj_dano_inimigos) instance_destroy();
    // Adicione outras chamadas instance_destroy() conforme necessário

    global.boss_spawned = true;
    instance_create_layer(670, 100, layer, obj_chefe);
    audio_stop_all();
    audio_play_sound(Waves_in_Flight, 3, true);
}


// Verifica se o boss foi derrotado e inicia nova fase
if (global.boss_derrotado) {
    global.boss_spawned = false;
    global.boss_derrotado = false;
    pode_criar_inimigos = true; // Permite a criação de novos inimigos
    
    // Resetar waves e iniciar nova fase
    iniciar_nova_fase(); // Função para configurar nova fase e tipos de inimigos
}

// Controle de pontuação e vidas extras
if (global.pontos >= pontos_para_vida) {
    global.player_vida += 1; // Concede uma vida extra
    pontos_para_vida += 1000; // Atualiza a meta para a próxima vida extra
}

// Controle de som quando o jogo acaba
if (global.gameover) {
    audio_stop_all();
    instance_destroy(obj_dano_inimigos);
}

// Verifique se o método criar_inimigos_wave é chamado apenas quando necessário
if (pode_criar_inimigos && global.gamestart && !global.boss_spawned) {
    var repetir = 2 + global.level;
    repeat(repetir) {
        criar_inimigos_wave();
    }

    pode_criar_inimigos = false;
    inimigo_liberado = false;
    global.level++;
    global.audio_ja_tocado = false;
}