if (vida <= 0) {
    instance_destroy(); // Destroi o chefe
    global.boss_derrotado = true; // Marca que o boss foi derrotado
	instance_destroy(obj_dano_inimigos);
}
