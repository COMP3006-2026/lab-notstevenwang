import shapes3d.*;
import shapes3d.contour.*;
import shapes3d.org.apache.commons.math.*;
import shapes3d.org.apache.commons.math.geometry.*;
import shapes3d.path.*;
import shapes3d.utils.*;

import peasy.*;

Tube wheel;
PeasyCam cam;

void setup(){
  size(900,700, P3D);
  
  noStroke();
  
  Path path = new Linear(new PVector(-25,0,0), new PVector(25,0,0), 5);
  Oval circle = new Oval(50,32);
  
  wheel = new Tube(path, circle);
  
  cam = new PeasyCam(this, 500);
}

void draw(){
  background(255);
  lights();
  
  //body
  pushMatrix();
    translate(600,235, -25);
    fill(0, 0, 139);
    box(800, 150, 300);
  popMatrix();
  
  //upper part
  pushMatrix();
    translate(600,85, -25);
    fill(173, 216, 230);
    box(450, 150, 300);
  popMatrix();
  
  //right bw
  pushMatrix();
    translate(400,300, 150);
    rotateY(PI/2);
    wheel.draw(getGraphics());
  popMatrix();
  
  //left bw
  pushMatrix();
    translate(400,300, -200);
    rotateY(PI/2);
    wheel.draw(getGraphics());
  popMatrix();
  
  //right fw
  pushMatrix();
    translate(800,300,150);
    rotateY(PI/2);
    wheel.draw(getGraphics());
  popMatrix();
  
  //left fw
  pushMatrix();
    translate(800,300,-200);
    rotateY(PI/2);
    wheel.draw(getGraphics());
  popMatrix();
}
