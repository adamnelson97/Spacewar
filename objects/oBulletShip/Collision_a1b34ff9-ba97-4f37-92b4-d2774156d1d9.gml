effect_create_above(ef_explosion, x, y, 0, c_red);
effect_create_above(ef_explosion, x, y, 0, c_orange);
effect_create_below(ef_ring, x, y, 0, c_white);
audio_play_sound(short_explosion, 0, 0);
instance_destroy();