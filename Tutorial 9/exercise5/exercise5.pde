import shapes3d.*;
import shapes3d.contour.*;
import shapes3d.org.apache.commons.math.*;
import shapes3d.org.apache.commons.math.geometry.*;
import shapes3d.path.*;
import shapes3d.utils.*;

float aSun = 0;
float aEarth = 0;
float aMoon = 0;

float camX = width/2;
float camY = height/2;
float camZ = 500;

PImage sun, earth, moon;
PShape sunS, earthS, moonS;

void setup(){
  size(1100, 700, P3D);
  noStroke();
  
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
  
  camera(camX, camY, camZ, 550, 200, 0, 0, 1, 0);
  
  aSun+=0.005;
  
  aEarth+=0.01;
  
  aMoon+=0.05;
  
  //sun
  pushMatrix();
    translate(width/2, height/2);
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

void keyPressed(){
  if(key == 'w') camZ-=20;
  if(key == 's') camZ+=20;
  if(key == 'a') camX-=20;
  if(key == 'd') camX+=20;
}
