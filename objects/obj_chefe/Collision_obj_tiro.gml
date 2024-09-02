if (other.object_index == obj_tiro || other.object_index == obj_tiro_2 || other.object_index == obj_tiro_3) {
    vida -= 1;
	audio_play_sound(Hit_damage_1, 3, false);
    instance_destroy(other);

   if (vida <= 0) {
    global.boss_derrotado = true; // Marca que o boss foi derrotado
    
  }

}