PImage[] earth = new PImage[240];
PImage moon;
int frame = 0;
float moonX = 0;
float moonY = 0;
float angle = 0;
float distME = 240;
float angularS = 0.025;

void setup(){
  size(500,500);
  for (int i = 0; i < 240; i++){
    earth[i] = loadImage("../earth/" + i + ".gif");
  }
  moon = loadImage("../moon-icon.png");
  moon.resize(50,50);
  imageMode(CENTER);
}

void draw(){
  fill(0, 20);
  noStroke();
  rect(0, 0, width, height);
  
  image(earth[frame%240],250, 250);
  //fill(30,100,200);
  //ellipse(250,250,80,80);
  frame++;
  moonX = sin(angle) * distME +250;
  moonY = cos(angle) * distME +250;
  fill(200,200,200);
  //ellipse(moonX, moonY, 30,30);
  image(moon, moonX, moonY);
  angle += angularS;
}
