
//logica todo movimento do player
velocidade = 4;
vel_h = 0;
vel_v = 0;

pode_atirar = true;
delay_tiro = room_speed;


function atirando(){

var _tiro = keyboard_check(vk_space);

if (_tiro && pode_atirar){

instance_create_layer(x-22,y-98, layer, obj_tiro); 
pode_atirar = false;
alarm[0] = delay_tiro;

}

}
