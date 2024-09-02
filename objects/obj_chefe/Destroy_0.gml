// No evento de destruição do chefe
if (vida <= 0) {
    global.chefe_vitorias_jogador += 1;
    global.chefe_dano_recebido += vida_base - vida;
    global.boss_spawned = false; // Permite que as waves continuem
    instance_destroy();
}

if (!instance_exists(obj_player)) {
    instance_destroy();
}
