	if(keyboard_check(vk_enter) && !instance_exists(obj_nave)){
	
	instance_create_layer(670,740,layer,obj_nave);
	global.gamestart = true;
	level_start = true;
	inicia_som = true;
	
}

if(level_start && !instance_exists(obj_inimigo)
               && !instance_exists(obj_inimigo_azul)
               && !instance_exists(obj_inimigo_verde))
			  
{
	delay_start -= 1;
	if(delay_start <= 0){
		
		inimigo_liberado = true;
		delay_start = delay;
	}
	
}

// No evento Step do obj_controle
if (!global.boss_spawned) {
    if (pode_criar_inimigos && global.gamestart) {
        var repetir = 2 * global.level;

        repeat(repetir) {
            criar_inimigos_wave();
        }

        pode_criar_inimigos = false;
        inimigo_liberado = false;
        global.level++;
    }

    // Verifica se o boss deve aparecer
    if (global.level % global.boss_reaparecimento == 0) {
        global.boss_spawned = true;
        instance_create_layer(670, 100, layer, obj_chefe); // Cria o boss
        pode_criar_inimigos = false; // Pausa a criação de inimigos
        audio_stop_all(); // Para a música atual
        audio_play_sound(snd_fight, 3, true); // Toca a música do boss
    }
} else {
    // Se o boss está ativo, impede a criação de novas waves
    pode_criar_inimigos = false;
}

// Verifica se o boss foi derrotado
if (global.boss_derrotado) {
    global.boss_spawned = false; // Permite que o boss reapareça
    global.boss_derrotado = false; // Reseta a flag de derrota do boss
    pode_criar_inimigos = true; // Permite a criação de novos inimigos
}

if (global.pontos >= pontos_para_vida) {
    global.player_vida += 1; // Concede uma vida extra
    pontos_para_vida += meta_pontos; // Atualiza a meta para a próxima vida extra
}



if (global.gameover){

audio_stop_all();
audio_play_sound(snd_inicial,3,true);

instance_destroy(obj_dano_inimigos);

}






