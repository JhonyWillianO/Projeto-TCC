	if(keyboard_check(vk_enter) && !instance_exists(obj_nave)){
	
	instance_create_layer(670,740,layer,obj_nave);
	global.gamestart = true;
	level_start = true;
	inicia_som = true;
	
}

if(level_start && !instance_exists(obj_inimigo)
               && !instance_exists(obj_inimigo_azul)
               && !instance_exists(obj_inimigo_amarelho))
{
	delay_start -= 1;
	if(delay_start <= 0){
		
		inimigo_liberado = true;
		delay_start = delay;
	}
	
}

if(pode_criar_inimigos && global.gamestart){

var repetir = 2 * global.level;

repeat(repetir){

criar_inimigos_wave();

}

pode_criar_inimigos = false;
inimigo_liberado = false;
global.level++;

}

if (global.gamestart && inicia_som){

audio_stop_all();
audio_play_sound(Mecha_Collection,3,true);
inicia_som = false;

}

if (global.gameover){

audio_stop_all();
audio_play_sound(snd_inicial,3,true);

instance_destroy(obj_dano);

}






