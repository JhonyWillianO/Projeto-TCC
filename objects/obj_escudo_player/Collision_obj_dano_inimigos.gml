if (instance_exists(obj_escudo_player)) {
    // Se o escudo existe, ele absorve o dano
    with (obj_escudo_player) {
        vida -= 1; // Reduz a vida do escudo
    }
    // O player não toma dano se o escudo absorveu o impacto
    instance_destroy(other);
}
