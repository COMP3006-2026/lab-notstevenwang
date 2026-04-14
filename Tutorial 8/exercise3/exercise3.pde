import peasy.*;
PeasyCam cam;

void setup(){
  size(500, 500, P3D);
  cam = new PeasyCam(this,300);
}

void draw(){
  background(0);
  noStroke();
  fill(0, 150, 255);
  
  // Pentagon = 5 sides
  int sides = 5;
  float radius = 100;
  
  beginShape(TRIANGLE_FAN);
  vertex(0, 0, 0);
  for (int i = 0; i <= sides; i++) {
    float angle = map(i, 0, sides, 0, TWO_PI);
    vertex(cos(angle) * radius, sin(angle) * radius, 0);
  }
  endShape();
}
