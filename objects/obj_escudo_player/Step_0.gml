// Verifica se o player ainda existe
if (instance_exists(obj_player)) {
    // O escudo segue o player
    x = obj_player.x;
    y = obj_player.y;
} else {
    // Se o player não existe mais, destrua o escudo
    instance_destroy();
}

// Verificar se a vida do escudo chegou a 0
if (vida <= 0) {
    instance_destroy(); // Destrói o escudo quando a vida chega a 0
}
