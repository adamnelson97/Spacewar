move_wrap(true, true, 0);

// Calculate pull from gravity
var Distance = point_distance(x, y, oSun.x, oSun.y);
var Force = oSun.grav_const / (Distance * Distance);
var Dist_X = (oSun.x - x) / Distance;
var Dist_Y = (oSun.y - y) / Distance;
var Sun_Vel_X = Dist_X * Force;
var Sun_Vel_Y = Dist_Y * Force;

// Randomly change velocity to get original path
if (!game_over) {
	if (irandom(15) == 1) {
		x_velo += 0.2;
	} else if (irandom(15) == 2) {
		x_velo -= 0.2;
	}

	if (irandom(15) == 1) {
		y_velo += 0.2;
	} else if (irandom(15) == 2) {
		y_velo -= 0.2;
	}
}

// Update Position
x += x_velo + Sun_Vel_X;
y += y_velo + Sun_Vel_Y;

// Update angle
image_angle = point_direction(x, y, x + x_velo, y + y_velo) - 90;

// Decrement timer so bullets don't fire constantly
if (bullet_timer > 0) {
	bullet_timer--;
}

// Fire bullet stream
var bullet;
if (bullet_timer == 0) {
	bullet = instance_create_layer(x, y, "Instances", oBulletEnemy);
	with(bullet) {
		bullet.image_angle = oEnemy.image_angle;
		bullet.x_velo = oEnemy.x_velo - 5*sin(oEnemy.image_angle*(pi/180));
		bullet.y_velo = oEnemy.y_velo - 5*cos(oEnemy.image_angle*(pi/180));
	}
	bullet_timer = 15;
}