// Quando o chefe é atingido
if (other.object_index == obj_tiro && obj_tiro_2 && obj_tiro_3) {
	instance_create_layer(x,y,1,obj_explosao);
    var som = choose(explosion_1,explosion_2);
    vida -= 1; 
    instance_destroy(other); 

    // Verifica se o chefe foi derrotado
    if (vida <= 0) {
        instance_destroy(); 
     
    }
}
