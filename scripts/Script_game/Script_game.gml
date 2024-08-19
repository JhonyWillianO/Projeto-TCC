randomize();

//variaveis globois
//game
global.gamestart = false;
global.gameover = false;
global.level = 1;
global.pontos = 0;

//player
global.player_velocidade = 4;
global.player_level_tiro = 1;
global.player_velocidade_tiro = 10;
global.player_cadencia = 1;
global.player_vida = 4;
global.player_invulneravel = false; // Ativa invulnerabilidade temporária
global.player_pode_piscar = false;

//boss
global.boss_reaparecimento = 5; // O boss reaparece a cada 5 waves
global.boss_spawned = false; // Flag para saber se o boss foi criado
global.boss_derrotado = false; // Flag para saber se o boss foi derrotado

//menu
global.jogo_pausado = false;

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
