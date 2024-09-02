randomize();

//variaveis globois
//game
global.gamestart = false;
global.gameover = false;
global.level = 1;
global.fase = 1;
global.pontos = 0;
global.pause = false;

//player
global.player_velocidade = 4;
global.player_level_tiro = 1;
global.player_velocidade_tiro = 10;
global.player_cadencia = 1;
global.player_vida = 4;
global.player_invulneravel = false; // Ativa invulnerabilidade temporária
global.player_pode_piscar = false;

//boss e inimigos
global.boss_spawned = false; // Flag para saber se o boss foi criado
global.boss_derrotado = false; // Flag para saber se o boss foi derrotado
global.inimigos = [obj_inimigo_rosa,obj_inimigo_verde,obj_inimigo_amarelho];


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
	obj_player.sprite_index = Sprit_nave_esquerda;
}

else if(_right){
	obj_player.sprite_index = Sprit_nave_direita;
}

else{
	obj_player.sprite_index = Sprit_nave_parada;
}

}
