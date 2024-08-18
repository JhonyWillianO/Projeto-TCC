randomize();

//variaveis globois

global.gamestart = false;
global.gameover = false;
global.level = 1;

global.player_velocidade = 4;
global.player_level_tiro = 1;
global.player_velocidade_tiro = 10;
global.player_cadencia = 1;
global.player_vida = 3;

global.pontos = 0;

global.chefe = false;
//////////////

//funçao para os controles 
function movimentacao(velocidade){

var _up, _down, _left, _right;

_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
_right = keyboard_check(vk_right) || keyboard_check(ord("D"));

//logica do movimento horizontal e vertical
vel_h = (_right - _left);
vel_v = (_down - _up);

x += vel_h * velocidade;
y += vel_v * velocidade;

if(_left){
	obj_nave.sprite_index = Sprit_Nave_esquerda;
}

else if(_right){
	obj_nave.sprite_index = Sprit_Nave_direita;
}

else{
	obj_nave.sprite_index = Sprit_Nave_parada;
}

}
