PImage[] earth = new PImage[240];
PImage moon;
int frame = 0;
float moonX = 0;
float moonY = 0;
float angle = 0;
float distME = 240;
float angularS = 0.025;

float shuttleS;
boolean arrived;

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
  
  if(!arrived){
    shuttleS += 0.005;
    if(shuttleS >= 1.0){
      shuttleS = 1;
      arrived = true;
    }
  }
  
  float ease = (1-cos(shuttleS*PI))/2.0;
  float shuttleX = lerp(250, moonX, ease);
  float shuttleY = lerp(250, moonY, ease);
  
  fill(255, 100, 100);
  stroke(160, 160, 160);
  strokeWeight(1);
  beginShape();
    vertex(shuttleX, shuttleY - 10);
    vertex(shuttleX - 8, shuttleY + 8);
    vertex(shuttleX + 8, shuttleY + 8);
  endShape(CLOSE);
  
}
