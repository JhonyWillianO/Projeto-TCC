instance_create_layer(x,y,layer,obj_explosao);

var som = choose(snd_explosion_1,snd_explosion_2);
audio_play_sound(som,2,false);


var ultimo = instance_number(obj_inimigo);

if(ultimo == 1){

var up = instance_create_layer(x,y,layer,Obj_poder);
up.tipo = "tiro";

}