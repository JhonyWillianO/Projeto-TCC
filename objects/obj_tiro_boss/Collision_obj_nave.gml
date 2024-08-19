if (other.object_index == obj_nave) {
    // Reduz a vida do player em 1
    global.player_vida -= 1;

    // Destroi o tiro do boss
    instance_destroy();
}
