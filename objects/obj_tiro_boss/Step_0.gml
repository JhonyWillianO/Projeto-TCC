// Movimento do tiro
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Destrua o tiro se sair da tela
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}
