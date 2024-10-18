#region Controles
key_right = keyboard_check(ord("D")); //direita
key_left = keyboard_check(ord("A")); //esquerda
key_jump = keyboard_check(vk_space); // pulo
key_shoot = keyboard_check_pressed(ord("E"));  //tiro
#endregion

#region Movimentação
var move = key_right - key_left

hspd = move * spd;

vspd = vspd + grv;

if (hspd != 0) image_xscale = sign(hspd);

//colisão horizontal
if place_meeting(x+hspd,y,obj_wall)
{
	while(!place_meeting(x+sign(hspd),y,obj_wall))
{
x = x + sign(hspd);
}
hspd = 0;
}
x = x + hspd;
//colisao vertical
if place_meeting(x,y+vspd,obj_wall)
{
	while(!place_meeting(x,y+sign(vspd),obj_wall))
{
y = y + sign(vspd);
}
vspd = 0;
}
y = y + vspd;

//pulo
if place_meeting(x,y+1,obj_wall) and key_jump 
{
	vspd-=12;
}
#endregion

#region Tiro

var flipped = direction;
var gun_x =(x+4)*(flipped)
var _xx = x + lengthdir_x(15,image_angle)
var y_offset = lengthdir_y(-20,image_angle)
if key_shoot and global.bullets > 0
{
	with (instance_create_layer(_xx,y+10,layer,obj_shoot))
	{
	global.bullets--;
	//velocidade
	speed = 10;
	//direçao
	direction = -90 + 90 *other.image_xscale;
	//angulo
	image_angle = direction;
	}
}
#endregion

if global.life < 0 {
	game_restart();
}