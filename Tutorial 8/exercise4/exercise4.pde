float angle = 0;
import peasy.*;
PeasyCam cam;

void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this,300);
}

void draw() {
  background(0);
  lights();
  //translate(width/2, height/2, 0);
  //rotateY(map(mouseX, 0, width, -PI, PI));
  //rotateX(map(mouseY, 0, height, -PI, PI));
  
  noStroke();
  fill(0, 100, 255);
  sphere(80);
  
  angle += 0.005;
  
  pushMatrix();
    rotateY(angle);
    translate(200, 0, 0);
   
    fill(200, 200, 200);
    sphere(30);
 popMatrix();
}
