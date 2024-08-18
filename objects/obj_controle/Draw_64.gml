if(pode_piscar && !instance_exists(obj_nave) && !global.gameover){

draw_set_font(text_1);
draw_set_color(c_blue);
draw_text(462,384,"Aperte Enter Para dar Inicio");


}

if(pode_piscar && level_start && global.gamestart && !instance_exists(obj_inimigo)
                                                  && !instance_exists(obj_inimigo_azul)
                                                  && !instance_exists(obj_inimigo_amarelho)){
													  
draw_set_font(text_1);
draw_set_color(c_red);
draw_text(650,328,"Wave - "+ string(global.level));						  
													  
												  
 }
 
 if(pode_piscar && global.gameover){
 
 draw_set_font(text_1);
draw_set_color(c_red);
draw_text(660,348,"Game-Over");
 
 delay_gameover -= 1;
 if(delay_gameover <= 0){
 
 global.gameover = false;
 delay_gameover = delay;
 
 }
 
 
 }