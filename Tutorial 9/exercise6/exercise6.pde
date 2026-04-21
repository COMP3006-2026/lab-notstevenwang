import peasy.*;

import shapes3d.*;
import shapes3d.contour.*;
import shapes3d.org.apache.commons.math.*;
import shapes3d.org.apache.commons.math.geometry.*;
import shapes3d.path.*;
import shapes3d.utils.*;

float aSun = 0;
float aEarth = 0;
float aMoon = 0;

PImage sun, earth, moon;
PShape sunS, earthS, moonS;

PeasyCam cam;

void setup(){
  size(1100, 700, P3D);
  noStroke();
  
  cam = new PeasyCam(this, 500);
  
  sun = loadImage("sun.jpg");
  earth = loadImage("earth.jpeg");
  moon = loadImage("moon.jpg");
  
  sunS = createShape(SPHERE, 100);
  earthS = createShape(SPHERE, 40);
  moonS = createShape(SPHERE, 15);
}

void draw(){
  background(0);
  lights();
  
  aSun+=0.005;
  
  aEarth+=0.01;
  
  aMoon+=0.05;
  
  //sun
  pushMatrix();
    //translate(width/2, height/2);
    rotateY(aSun);
    sunS.setTexture(sun);
    shape(sunS);
  
  
  //earth
    rotateY(aEarth);
    translate(400, 0);
    earthS.setTexture(earth);
    shape(earthS);
  
  //moon
    rotateY(aMoon);
    translate(90, 0);
    moonS.setTexture(moon);
    shape(moonS);
  
  popMatrix();
}
