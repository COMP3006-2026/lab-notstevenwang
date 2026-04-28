import shapes3d.*;
import shapes3d.contour.*;
import shapes3d.org.apache.commons.math.*;
import shapes3d.org.apache.commons.math.geometry.*;
import shapes3d.path.*;
import shapes3d.utils.*;

import peasy.*;

Tube wheel;
//PeasyCam cam;

float x[] = new float[5];
float y[] = new float[5];
float z[] = new float[5];

color cu[] = new color[5];
color cl[] = new color[5];

float scale[] = new float[5];

float w, h, d, wr, wd;
float tx = -2400;
float spacing = 1000;

int selected = -1;

float startX[] = new float [5];
float startZ[] = new float [5];
float carR[] = new float [5];

float sx[] = new float[5];
float sy[] = new float[5];

void setup(){
  fullScreen(P3D);
  noStroke();
  
  Path path = new Linear(new PVector(-25,0,0), new PVector(25,0,0), 5);
  Oval circle = new Oval(50,32);
  wheel = new Tube(path, circle);
  
  //cam = new PeasyCam(this, 1000);
  
  for(int i = 0; i < 5 ; i++){
    x[i] = tx + (i*spacing);
    startX[i] = x[i];
    y[i] = random(-50,100);
    z[i] = 0;
    startZ[i] = z[i];
    
    cu[i] = color(random(255), random(255), random(255));
    cl[i] = color(random(255), random(255), random(255));
    
    scale[i] = random(1.0, 2.0);
  }
  
  cu[4] = color(red(cu[4]), green(cu[4]), blue(cu[4]), 255);
  cl[4] = color(red(cl[4]), green(cl[4]), blue(cl[4]), 255);
}

void draw(){
  background(255);
  lights();
  
  camera(0, -1500, 4000, 0, 0, 0, 0, 1, 0);
  
  float t = frameCount * 0.01;
  
  carR[2] += 0.02;
  scale[3] = 1.5 + sin(t) * 1.0;
  float alpha = (sin(t) + 1) * 127;
  cu[4] = color(red(cu[4]), green(cu[4]), blue(cu[4]), alpha);
  cl[4] = color(red(cl[4]), green(cl[4]), blue(cl[4]), alpha);
  
  for(int i = 0; i < 5; i++){
    x[i] = startX[i] + sin(t + i) * 500;
    z[i] = startZ[i] + cos(t + i) * 500;
    
    drawCar(x[i], y[i], z[i], cu[i], cl[i], scale[i], i, carR[i]);
    
    sx[i] = screenX(x[i] + 600*scale[i], y[i] + 235*scale[i], z[i]);
    sy[i] = screenY(x[i] + 600*scale[i], y[i] + 235*scale[i], z[i]);
    
  }
}

void drawCar (float x, float y, float z, color cU, color cL, float s, int i, float rotation){
  pushMatrix();
    translate(x,y,z);
    rotateY(rotation);

    //body
    pushMatrix();
      translate(600*s, 235*s, -25*s);
      if (selected == i) {
        fill(lerpColor(cU, color(255,255,255), 0.5));
      } else {
        fill(cU);
      }
      box(800*s, 150*s, 300*s);
    popMatrix();
  
    //upperPart
    pushMatrix();
      translate(600*s, 85*s, -25*s);
      if (selected == i) {
        fill(lerpColor(cL, color(255,255,255), 0.5));
      } else {
        fill(cL);
      }
      box(450*s, 150*s, 300*s);
    popMatrix();
    
    //R backWheel
    pushMatrix();
      translate(400*s, 300*s, 150*s);
      rotateY(PI/2);
      scale(s);
      wheel.strokeWeight(0);
      wheel.fill(0);
      wheel.draw(getGraphics());
    popMatrix();
    
    //L backWheel
    pushMatrix();
      translate(400*s, 300*s, -200*s);
      rotateY(PI/2);
      scale(s);
      wheel.strokeWeight(0);
      wheel.fill(0);
      wheel.draw(getGraphics());
    popMatrix();
    
    //R frontWheel
    pushMatrix();
      translate(800*s, 300*s, 150*s);
      rotateY(PI/2);
      scale(s);
      wheel.strokeWeight(0);
      wheel.fill(0);
      wheel.draw(getGraphics());
    popMatrix();
    
    //L frontWheel
    pushMatrix();
      translate(800*s, 300*s, -200*s);
      rotateY(PI/2);
      scale(s);
      wheel.strokeWeight(0);
      wheel.fill(0);
      wheel.draw(getGraphics());
    popMatrix();
    
  popMatrix();
}

void mousePressed(){
  selected = -1;
  for(int i = 0; i < 5; i++){
    if (abs(mouseX - sx[i]) < 100 && abs(mouseY - sy[i]) < 100) {
      selected = i;
      break;
    }
  }
}
