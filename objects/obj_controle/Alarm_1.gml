if (!global.boss_spawned && inimigo_liberado) {
    pode_criar_inimigos = true;
}
alarm[1] = delay_inimigos; // Reativa o temporizador se não houver boss
