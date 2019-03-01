if (!audio_is_playing(sound_missile_launch)) audio_play_sound(sound_missile_launch, 1, 0);
var bullet;
if (bullet_timer == 0) {
	bullet = instance_create_layer(x, y, "Instances", oBulletShip);
	with(bullet) {
		bullet.image_angle = oShip.image_angle;
		bullet.x_velo = oShip.x_velo - 5*sin(oShip.image_angle*(pi/180));
		bullet.y_velo = oShip.y_velo - 5*cos(oShip.image_angle*(pi/180));
	}
	bullet_timer = 10;
}