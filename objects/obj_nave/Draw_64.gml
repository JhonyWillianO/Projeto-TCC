var _altura_gui = display_get_gui_height();

var multiplicador = 0;
var espaco = 20;

repeat(global.player_vida){

draw_sprite_ext(Sprit_Nave_parada,1,10+(espaco*multiplicador),_altura_gui - 20,1,1,0,c_white, .3);

multiplicador++;

}

draw_set_font(text_1);
draw_set_color(c_white);
draw_text(20,20,global.pontos);