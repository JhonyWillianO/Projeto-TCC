if (global.pause) exit; // Pausar função do game

// Movimento em direção ao player
var dir = point_direction(x, y, obj_player.x, obj_player.y);
x += lengthdir_x(velocidade, dir);
y += lengthdir_y(velocidade, dir);