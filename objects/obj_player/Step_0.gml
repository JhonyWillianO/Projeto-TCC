if (global.pause)exit;//pausar função do game

//chamando variavel 
movimentacao(global.player_velocidade);
atirando();

velocidade = global.player_velocidade;
tiro_level = global.player_level_tiro;
delay_tiro = room_speed/global.player_cadencia;

//x = clamp(x,100,1446);
//y = clamp(y,100,1410);

delay_tiro3 -= 1;

if(delay_tiro3 <= 0){

delay_tiro3 = 60;
pode_tiro3 = true;

}

if(global.player_vida < 0){

global.gamestart = false;
global.gameover = true;
global.level = 1;
global.player_velocidade = 4;
global.player_level_tiro = 1;
global.player_vida = 3;

instance_destroy();
audio_play_sound(snd_explosion,1,false);
obj_controle.inimigo_liberado = false;

}

// Se o player estiver invulnerável
if (invulneravel) {
    // Lógica de piscar
    if (pode_piscar) {
        // Alterna entre opacidade total e parcial
        if (image_alpha == 1) {
            image_alpha = 0.5;
        } else {
            image_alpha = 1;
        }
    }
}
