if (vida <= 0) {
    instance_destroy(); // Destroi o chefe
    global.boss_derrotado = true; // Marca que o boss foi derrotado
    audio_stop_all(); // Para a música do boss
    audio_play_sound(Mecha_Collection, 3, true); // `snd_inicial` é a música normal do jogo
}
