if(tipo == "velocidade"){

global.player_escudo = global.player_velocidade + 0.2;

}
else if(tipo == "tiro"){

global.player_level_tiro = global.player_level_tiro + 1;

}
else if(tipo == "cadencia"){

global.player_cadencia = global.player_cadencia + 0.2;

}

show_debug_message(global.player_velocidade);
show_debug_message(global.player_level_tiro);
show_debug_message(global.player_cadencia);

instance_destroy();

audio_play_sound(beep,1,false);