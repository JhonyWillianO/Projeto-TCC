if (y >= 10)
{
	instance_create_layer(x,y,layer,obj_tiro_inimigo);
}

alarm[0] = room_speed * random_range(1,3);