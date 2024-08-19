if (other.object_index == obj_tiro || other.object_index == obj_tiro_2 || other.object_index == obj_tiro_3) {
    vida -= 1;
    instance_destroy(other);

   if (vida <= 0) {
    global.boss_derrotado = true; // Marca que o boss foi derrotado
    
	audio_stop_all();
    audio_play_sound(snd_victory__All_Clear, 4, false);
  
  if (!audio_is_playing(snd_victory__All_Clear)) {

       audio_play_sound(Zero_Respect, 3, true);
    
	}

  }

}