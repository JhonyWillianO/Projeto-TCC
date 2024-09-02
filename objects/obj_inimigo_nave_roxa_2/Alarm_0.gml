// Evento Alarm[0]
var offset_x = 50; // Distância horizontal para os novos inimigos aparecerem

// Cria inimigos menores ao lado do inimigo maior
instance_create_layer(x - offset_x, y, layer, obj_inimigo_nave_roxa_3);

// Reseta o alarme para o próximo ciclo de criação
alarm[0] = tempo_para_criar_inimigo; // Reconfigura o alarme para repetir a criação
