if (global.pause)exit;//pausar função do game

// Evento Step do obj_missil_seguidor
if (instance_exists(target)) {
    var dir = point_direction(x, y, target.x, target.y);
    var spd_x = lengthdir_x(velocidade, dir);
    var spd_y = lengthdir_y(velocidade, dir);

    x += spd_x;
    y += spd_y;
}
// Evento Step do Míssil
if (instance_exists(target)) {
    var dir = point_direction(x, y, target.x, target.y);
    var spd_x = lengthdir_x(velocidade, dir);
    var spd_y = lengthdir_y(velocidade, dir);

    x += spd_x;
    y += spd_y;

    // Alterar o sprite baseado na direção do míssil
    if (dir >= 45 && dir < 135) {
        sprite_index = Sprit_tiro_inimigo_missio_baixo; // Missil indo para baixo
    } else if (dir >= 135 && dir < 225) {
        sprite_index = Sprit_tiro_inimigo_missio_esquerda; // Missil indo para a esquerda
    } else if (dir >= 225 && dir < 315) {
        sprite_index = Sprit_tiro_inimigo_missio_reto; // Missil indo para cima
    } else {
        sprite_index = Sprit_tiro_inimigo_missio_direita; // Missil indo para a direita
    }
}

// Destruir o míssil se ele sair da tela
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}