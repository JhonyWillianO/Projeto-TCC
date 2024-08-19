if ((global.level % 5 == 0) && !global.boss_spawned && !global.boss_derrotado) {
    // Cria o boss na posição desejada
    var boss = instance_create_layer(670, 100, layer, obj_chefe);
    
    // Aumenta a vida do boss em +20 a cada vez que ele aparece
    boss.vida = 30 + (global.level div 5) * 20;

    global.boss_spawned = true; // Marca que o boss foi criado
    pode_criar_inimigos = false; // Pausa as waves normais enquanto o chefe está ativo
	
    // Para a música atual e inicia a música do boss
    audio_stop_all();
    audio_play_sound(snd_fight, 3, true);
}

if (global.boss_derrotado) {
    global.boss_spawned = false; // Reseta a flag para permitir a criação de um novo boss no futuro
    global.boss_derrotado = false; // Reseta a flag de derrota do boss
    global.level++; // Avança para a próxima wave
    pode_criar_inimigos = true; // Permite a criação de novos inimigos
}
