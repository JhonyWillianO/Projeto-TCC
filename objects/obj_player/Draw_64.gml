var _altura_gui = display_get_gui_height();

var multiplicador = 0;
var espaco = 20;

repeat(global.player_vida){
draw_set_color(c_red);	
draw_text(12,736,"life -");
draw_sprite_ext(Sprit_vida,100,180+(espaco*multiplicador),_altura_gui -30,2,2,0,c_white, 10);

multiplicador++;

}

draw_set_font(text_pixel);
draw_set_color(c_white);
draw_text(20,20,"Score - " + string (global.pontos));