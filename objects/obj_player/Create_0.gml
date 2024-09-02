
//logica todo movimento do player
velocidade = global.player_velocidade;
tiro_level = global.player_level_tiro;

vel_h = 0;
vel_v = 0;

pode_atirar = true;
delay_tiro = room_speed/global.player_cadencia;

delay_tiro3 = room_speed;
pode_tiro3 = true;

invulneravel = false; // Inicialmente, o player não está invulnerável
pode_piscar = false; // Inicializa como falso, piscando quando invulnerável
tempo_invulneravel = 125; // Velocidade do piscar, ajuste conforme necessário

function atirando(){

var _tiro = keyboard_check(vk_space);

if (_tiro && pode_atirar){

audio_play_sound(snd_tiro_player,2,false);

if (tiro_level >= 1)
instance_create_layer(x-2,y-28,layer, obj_tiro); 

if (tiro_level >= 2)
instance_create_layer(x-23,y-28,layer, obj_tiro_2); 

if (tiro_level >= 3){
var _tiro2 = instance_create_layer(x-23,y-28,layer, obj_tiro_2); 
_tiro2.direcao_tiro = -1;
}

if (tiro_level >= 4){
var _tiro2 = instance_create_layer(x+21,y-28,layer, obj_tiro_2); 
_tiro2.direcao_tiro = -1;
}

if (tiro_level >= 5){
var _tiro2 = instance_create_layer(x+21,y-28,layer, obj_tiro_2); 
_tiro2.direcao_tiro = +1;
}

if(pode_tiro3){
	
if (tiro_level >= 6){
instance_create_layer(x+5,y-15,layer, obj_tiro_3); 
}	

if (tiro_level >= 7){
var _tiro3 = instance_create_layer(x-5,y-15,layer, obj_tiro_3); 
_tiro3.direcao_tiro = -1;
}

pode_tiro3 = false;

}

pode_atirar = false;
alarm[0] = delay_tiro;
}

}

