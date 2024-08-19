if (other.object_index == obj_tiro || other.object_index == obj_tiro_2 || other.object_index == obj_tiro_3) {
    vida -= 1;
    instance_destroy(other);

   if (vida <= 0) {
    global.boss_derrotado = true; // Marca que o boss foi derrotado
    instance_destroy(); // Destroi o chefe
    audio_stop_all(); // Para a música do boss
    audio_play_sound(snd_inicial, 3, true); // Volta a música normal do jogo
}
}