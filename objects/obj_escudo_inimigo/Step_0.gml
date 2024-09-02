if (global.pause)exit;//pausar função do game

// Evento Step do obj_escudo
if (instance_exists(dono)) {
    x = dono.x;
    y = dono.y;
} else {
    instance_destroy(); // Destrói o escudo se o inimigo não existir mais
}
