float angle = 0;
import peasy.*;
PeasyCam cam;

float distance = 0;
boolean arrived = false;


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
 
 if(!arrived){
   distance += 0.006;
   if(distance >= 1){
     arrived = !arrived;
   }
 } else {
   distance -= 0.006;
   if(distance <= 0){
     arrived = !arrived;
   }
 }
 
 pushMatrix();
   rotateY(angle);
   
   float shuttleX = lerp(0,200,distance);
   translate(shuttleX, 0, 0);
   
   fill(255,255,0);
   box(20,10,30);
 popMatrix();
 
}
