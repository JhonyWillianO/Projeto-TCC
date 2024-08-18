pode_piscar = true;
blink_speed = room_speed/2;

alarm[0] = blink_speed;

level_start = false;
inimigo_liberado = false; 
inicia_som = false;

delay = room_speed * 3;
delay_start = delay;
delay_gameover = delay;

delay_inimigos = room_speed;
alarm[1] = delay_inimigos;
pode_criar_inimigos = false;

function criar_inimigos_wave(){

var ini_x = irandom_range(20,650);
var ini_y_rosa = irandom_range(-20,-750)
var ini_y_verde = irandom_range(-50,-850)
var ini_y_amarelho = irandom_range(-100,-900)

instance_create_layer(ini_x,ini_y_rosa,layer,obj_inimigo);
instance_create_layer(ini_x,ini_y_verde,layer,obj_inimigo_azul);
instance_create_layer(ini_x,ini_y_amarelho,layer,obj_inimigo_amarelho);




}