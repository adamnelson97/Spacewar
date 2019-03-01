move_wrap(true, true, 0);

// Calculate pull from gravity
var Distance = point_distance(x, y, oSun.x, oSun.y);
var Force = oSun.grav_const / (Distance * Distance);
var Dist_X = (oSun.x - x) / Distance;
var Dist_Y = (oSun.y - y) / Distance;
var Sun_Vel_X = Dist_X * Force;
var Sun_Vel_Y = Dist_Y * Force;

// Update Position
x += x_velo + Sun_Vel_X;
y += y_velo + Sun_Vel_Y;

// Decrement timer so bullets don't fire constantly
if (bullet_timer > 0) {
	bullet_timer--;
}