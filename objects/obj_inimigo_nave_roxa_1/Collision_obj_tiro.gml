if (other.object_index == obj_tiro || other.object_index == obj_tiro_2 || other.object_index == obj_tiro_3) {
    vida -= 1;
    instance_destroy(other);

   if (vida <= 0) {
     instance_destroy();
    
  }

}