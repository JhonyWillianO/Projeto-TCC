if (global.pause)exit;//pausar função do game

// Evento Colisão do inimigo com obj_tiro_player
if (!instance_exists(meu_escudo)) { // Verifica se o escudo deste inimigo não existe mais
    instance_destroy(); // Destroi o inimigo
} 

// Destroi o tiro do jogador
with (other) {
    instance_destroy();
}
