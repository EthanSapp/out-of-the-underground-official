image_alpha -= 0.03;
x += 0.05;
if (image_alpha <= 0){
	instance_destroy();
}