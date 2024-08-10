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
	obj_nave.sprite_index = Sprit_Nave_direita;
}

else if(_right){
	obj_nave.sprite_index = Sprit_Nave_esquerda;
}

else{
	obj_nave.sprite_index = Sprit_Nave_parada;
}

}
