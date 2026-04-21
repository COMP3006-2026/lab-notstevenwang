size(300,300);

float rad = 1.0;
float x = 1.0;
float y = 1.0;
color circo;

smooth(50);
for(int i = 0; i < 100 ; i++){
  x = random (10.0, height - 10);
  y = random(10.0, height - 10);
  rad = random(5.0, 20.0);
  circo = color(random(255));
  
  fill(circo);
  circle(x, y, rad);
}
