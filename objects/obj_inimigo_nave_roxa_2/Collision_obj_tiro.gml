var obj_tiro_player_nome = object_get_name(obj_tiro);

if (object_get_name(other.object_index) == obj_tiro_player_nome) {
    vida -= 1;
    instance_destroy(other); // Destrói o tiro que atingiu o inimigo

    // Lógica para verificar se a vida do inimigo acabou e criar inimigos menores, se necessário
}
