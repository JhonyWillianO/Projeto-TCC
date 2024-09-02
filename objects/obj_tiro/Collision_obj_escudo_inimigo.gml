// Evento Colisão do obj_escudo com obj_tiro_player
global.vida_escudo--; // Reduz a vida do escudo

// Verifica se a vida do escudo acabou
if (global.vida_escudo <= 0) {
    instance_destroy(other); // Destroi o escudo
}

// Destroi o tiro do jogador após a colisão
instance_destroy();
