// No evento Create do obj_tiro_boss
speed = 8; // Velocidade do tiro do boss
direction = point_direction(x, y, obj_player.x, obj_player.y); // Direção em que o tiro será disparado

var som_tiro = choose(song_boss_tiro,);
audio_play_sound(som_tiro,2,false);