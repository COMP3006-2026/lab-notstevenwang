import peasy.*;
PeasyCam cam;
PShape aShape;

void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 10);
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(1000);
  aShape = loadShape("objects/RoninFinalS.obj");
}

void draw() {
  background(0);
  shape(aShape, 10, 20);
}
