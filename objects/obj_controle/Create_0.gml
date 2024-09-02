// Evento Create de obj_controle

// Inicializações
pode_piscar = false; // Inicializa a variável pode_piscar
blink_speed = room_speed / 2;
global.audio_ja_tocado = false;
global.boss_spawned = false; // Flag para saber se o boss foi criado

wave_atual = 0; // Contador de waves
max_waves = 5; // Máximo de waves por fase
boss_wave = 5; // Wave onde o boss aparece

level_start = false;
inimigo_liberado = false;

meta_pontos = 1000;
pontos_para_vida = meta_pontos; // Próxima meta para ganhar uma vida extra

delay = room_speed * 3;
delay_start = delay;
delay_inimigos = room_speed;
pode_criar_inimigos = false;
max_inimigos_na_tela = 10; // Máximo de inimigos permitidos na tela ao mesmo tempo

// Função para iniciar nova fase e mudar para a room correspondente
function iniciar_nova_fase() {
    global.fase += 1; // Incrementa a fase

    // Configura os inimigos e a room para a nova fase
    if (global.fase == 2) {
        global.inimigos = [obj_inimigo_nave, obj_inimigo_nave_3, obj_inimigo_nave_2];
        room_goto(Room_fase_2);
    } else if (global.fase == 3) {
        global.inimigos = [obj_inimigo_nave_4, obj_inimigo_nave_5, obj_inimigo_nave_6];
        room_goto(Room_fase_3);
    } else if (global.fase == 4) {
        global.inimigos = [obj_inimigo_bomba, obj_inimigo_nave_2, obj_inimigo_nave_5, obj_inimigo_nave_6];
        room_goto(Room_fase_4);
    } else if (global.fase == 5) {
        global.inimigos = [obj_inimigo_nave_roxa_1, obj_inimigo_nave_roxa_2, obj_inimigo_nave_roxa_3];
        room_goto(Room_fase_5);
    } else {
        room_goto(Room_fase_1);
    }

    // Resetar variáveis para a nova fase
    global.level = 1;
    delay_start = delay;
    pode_criar_inimigos = true;
}

// Inicia o alarme de piscar (se ainda necessário)
alarm[0] = blink_speed;
alarm[1] = delay_inimigos;

 // Função para criar inimigos na wave atual
function criar_inimigos_wave() {
    var ini_x = irandom_range(20, 1346); // Largura ajustada para a tela de 1366 pixels
    
    for (var i = 0; i < array_length(global.inimigos); i++) {
        // Ajustando a posição `y` para que os inimigos apareçam mais próximos da borda superior da tela
        var ini_y = irandom_range(-50, -150); // Entre -50 e -150 pixels acima da tela
        instance_create_layer(ini_x, ini_y, layer, global.inimigos[i]);
    }
}

// Inicializar variáveis globais no obj_controle
if (!variable_global_exists("chefe_experiencia_inicializada")) {
    global.chefe_experiencia_inicializada = false;
    global.chefe_dificuldade = 1; // Inicializa a dificuldade do chefe
}
