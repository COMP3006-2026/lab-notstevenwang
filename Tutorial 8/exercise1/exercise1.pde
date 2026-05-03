void setup(){
  size(500,500, P3D);
}

void draw(){
  background(0);
  translate(width/2, height/2, -width);
  rotateY(map(mouseX, 0, width, -PI, PI));
  rotateX(map(mouseY, 0, height, -PI, PI));
  noStroke();
  fill(0, 150, 255);
  
  int sides = 60;
  float radius = 100;
  
  
  beginShape();
  for (int i = 0; i <= sides; i++) {
    float angle = map(i, 0, sides, 0, TWO_PI);
    vertex(cos(angle) * radius, sin(angle) * radius, 0);
  }
  endShape(CLOSE);
  
  //beginShape(TRIANGLE_FAN);
  //vertex(0, 0, 0);
  //for (int i = 0; i <= sides; i++) {
  //  float angle = map(i, 0, sides, 0, TWO_PI);
  //  float x = cos(angle) * radius;
  //  float y = sin(angle) * radius;
  //  vertex(x, y, 0);
  //}
  //endShape();
}
