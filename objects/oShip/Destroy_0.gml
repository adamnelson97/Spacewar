effect_create_above(ef_explosion, x, y, 1, c_dkgray);
effect_create_above(ef_cloud, x, y, 2, c_blue);
effect_create_above(ef_firework, x, y, 1, c_red);
effect_create_above(ef_firework, x, y, 1, c_blue);
effect_create_below(ef_ring, x, y, 2, c_white);
audio_play_sound(explosion, 2, 0);
oEnemy.game_over = true;
var lose_msg;
lose_msg = instance_create_layer(1024, 568, "Instances", oLose);