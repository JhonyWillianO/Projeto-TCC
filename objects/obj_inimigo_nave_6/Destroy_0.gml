if (global.pause)exit;//pausar função do game

instance_create_layer(x,y,layer,obj_explosao);

var som = choose(snd_explosion_1,snd_explosion_2);
audio_play_sound(som,2,false);


var ultimo = instance_number(obj_inimigo_nave_6);

if(ultimo == 1){

var up = instance_create_layer(x,y,layer,obj_poder);
up.tipo = "tiro";

}