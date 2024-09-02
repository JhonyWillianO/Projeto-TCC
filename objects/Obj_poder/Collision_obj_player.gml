if (global.pause)exit;//pausar função do game

if(tipo == "velocidade"){

global.player_escudo = global.player_velocidade + 0.2;

}
else if(tipo == "tiro"){

global.player_level_tiro = global.player_level_tiro + 1;

}
else if(tipo == "cadencia"){

global.player_cadencia = global.player_cadencia + 0.3;

}

else if(tipo == "escudo"){

// Cria o escudo junto com o inimigo
meu_escudo = instance_create_layer(x, y, layer, obj_escudo_player);
meu_escudo.dono = id; // Associar o escudo a este obj

}

show_debug_message(global.player_velocidade);
show_debug_message(global.player_level_tiro);
show_debug_message(global.player_cadencia);

instance_destroy();

audio_play_sound(snd_beep,1,false);