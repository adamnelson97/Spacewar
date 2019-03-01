move_wrap(true, true, 0);
x += x_velo;
y += y_velo;
if (timer > 0) {
	timer--;
} else {
	instance_destroy();
}