//A LOT IS AI, BUT I UNDERSTAND

import peasy.*;
PeasyCam cam;

PImage brickTex, floorTex, woodTex;

PShape floorS, ceilS, frontW, backW, leftW, rightW;
PShape tableTop, tabLeg1, tabLeg2, tabLeg3, tabLeg4;
PShape chairSeat, chLeg1, chLeg2, chLeg3, chLeg4, chairBack;

void setup(){
  size(1100, 700, P3D);
  noStroke();
  cam = new PeasyCam(this, 500);
  
  // load textures
  brickTex = loadImage("wall.jpg");
  floorTex = loadImage("floor.jpg");
  woodTex  = loadImage("furniture.jpg");
  
  // --- ROOM ---
  floorS = createShape(BOX, 600, 10, 600);
  floorS.setTexture(floorTex);
  floorS.setStroke(false);
  
  ceilS = createShape(BOX, 600, 10, 600);
  ceilS.setTexture(brickTex);
  ceilS.setStroke(false);
  
  frontW = createShape(BOX, 600, 400, 10);
  frontW.setFill(color(200, 230, 255, 80));
  frontW.setStroke(false);
  
  backW = createShape(BOX, 600, 400, 10);
  backW.setTexture(brickTex);
  backW.setStroke(false);
  
  leftW = createShape(BOX, 10, 400, 600);
  leftW.setTexture(brickTex);
  leftW.setStroke(false);
  
  rightW = createShape(BOX, 10, 400, 600);
  rightW.setTexture(brickTex);
  rightW.setStroke(false);
  
  // --- TABLE ---
  tableTop = createShape(BOX, 150, 10, 80);
  tableTop.setTexture(woodTex);
  tableTop.setStroke(false);
  
  tabLeg1 = createShape(BOX, 10, 100, 10);
  tabLeg1.setTexture(woodTex);
  tabLeg1.setStroke(false);
  
  tabLeg2 = createShape(BOX, 10, 100, 10);
  tabLeg2.setTexture(woodTex);
  tabLeg2.setStroke(false);
  
  tabLeg3 = createShape(BOX, 10, 100, 10);
  tabLeg3.setTexture(woodTex);
  tabLeg3.setStroke(false);
  
  tabLeg4 = createShape(BOX, 10, 100, 10);
  tabLeg4.setTexture(woodTex);
  tabLeg4.setStroke(false);
  
  // --- CHAIR ---
  chairSeat = createShape(BOX, 60, 8, 60);
  chairSeat.setTexture(woodTex);
  chairSeat.setStroke(false);
  
  chLeg1 = createShape(BOX, 8, 100, 8);
  chLeg1.setTexture(woodTex);
  chLeg1.setStroke(false);
  
  chLeg2 = createShape(BOX, 8, 100, 8);
  chLeg2.setTexture(woodTex);
  chLeg2.setStroke(false);
  
  chLeg3 = createShape(BOX, 8, 100, 8);
  chLeg3.setTexture(woodTex);
  chLeg3.setStroke(false);
  
  chLeg4 = createShape(BOX, 8, 100, 8);
  chLeg4.setTexture(woodTex);
  chLeg4.setStroke(false);
  
  chairBack = createShape(BOX, 60, 80, 8);
  chairBack.setTexture(woodTex);
  chairBack.setStroke(false);
}

void draw(){
  background(0);
  lights();
  
  drawRoom();
  drawTable();
  drawChair();
}

void drawRoom(){
  // Floor
  pushMatrix();
    translate(0, 100, 0);
    shape(floorS);
  popMatrix();
  
  // Ceiling
  pushMatrix();
    translate(0, -300, 0);
    shape(ceilS);
  popMatrix();
  
  // Front wall
  pushMatrix();
    translate(0, -100, 300);
    shape(frontW);
  popMatrix();
  
  // Back wall
  pushMatrix();
    translate(0, -100, -300);
    shape(backW);
  popMatrix();
  
  // Left wall
  pushMatrix();
    translate(-300, -100, 0);
    shape(leftW);
  popMatrix();
  
  // Right wall
  pushMatrix();
    translate(300, -100, 0);
    shape(rightW);
  popMatrix();
}

void drawTable(){
  // Table top
  pushMatrix();
    translate(0, 20, 0);
    shape(tableTop);
  popMatrix();
  
  // Front Left leg
  pushMatrix();
    translate(-65, 70, -30);
    shape(tabLeg1);
  popMatrix();
  
  // Front Right leg
  pushMatrix();
    translate(65, 70, -30);
    shape(tabLeg2);
  popMatrix();
  
  // Back Left leg
  pushMatrix();
    translate(-65, 70, 30);
    shape(tabLeg3);
  popMatrix();
  
  // Back Right leg
  pushMatrix();
    translate(65, 70, 30);
    shape(tabLeg4);
  popMatrix();
}

void drawChair(){
  pushMatrix();
    translate(0, 0, 120);
    
    // Seat
    pushMatrix();
      translate(0, 20, 0);
      shape(chairSeat);
    popMatrix();
    
    // Front Left leg
    pushMatrix();
      translate(-25, 70, -25);
      shape(chLeg1);
    popMatrix();
    
    // Front Right leg
    pushMatrix();
      translate(25, 70, -25);
      shape(chLeg2);
    popMatrix();
    
    // Back Left leg
    pushMatrix();
      translate(-25, 70, 25);
      shape(chLeg3);
    popMatrix();
    
    // Back Right leg
    pushMatrix();
      translate(25, 70, 25);
      shape(chLeg4);
    popMatrix();
    
    // Backrest
    pushMatrix();
      translate(0, -15, 30);
      shape(chairBack);
    popMatrix();
    
  popMatrix();
}
