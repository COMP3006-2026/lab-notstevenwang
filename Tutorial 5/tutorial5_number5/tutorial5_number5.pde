void setup(){
  size(500,500);
  smooth(8);
}

void draw(){
  background(255);
  int sec = second();
  int min = minute();
  int hr = hour();
  
  int centerX = width/2;
  int centerY = height/2;
  int r = 200;
 
  stroke(0.5);
  ellipseMode(RADIUS);
  ellipse(centerX, centerY, r, r);
  
  float sTeta = TWO_PI / 60 * sec;
  float mTeta = TWO_PI / 60 * min;
  float hTeta = TWO_PI / 12 * hr + TWO_PI / 720 * min;
  
  stroke(255, 0, 0, 100);
  strokeWeight(2);
  line(centerX, centerY, centerX + r*0.8 *sin(sTeta), centerY - r*0.8 * cos(sTeta));
  
  stroke(0, 255, 0, 150);
  strokeWeight(3);
  line(centerX, centerY, centerX + r*0.6*sin(mTeta), centerY - r*0.6 * cos(mTeta));
  
  stroke(0, 0, 255, 200);
  strokeWeight(4);
  line(centerX, centerY, centerX + r*0.4*sin(hTeta), centerY - r*0.4 * cos(hTeta));
}
