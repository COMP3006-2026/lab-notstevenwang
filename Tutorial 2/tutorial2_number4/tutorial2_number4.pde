float x = 350;
float y = 350;
float w = 100;
float h = 400;
int s = 700;

void drawHuman(float x, float y, float w, float h){
  drawHead(x, y, w , h);
  drawBody(x, y, w, h);
  drawArmLegs(x, y, w, h);  
}

void drawHead(float x, float y, float w, float h){
  strokeWeight(10);
  stroke(0);
  fill(255,253,208);
  ellipse(x,y-h/3,w+90,h/5);
  
  circle(x-50,y-h/3,10);
  circle(x+50,y-h/3,10);
  
  strokeWeight(5);
  noFill();
  triangle(x,y-h/3,x+3,y-h/3+3,x-3,y-h/3+3);  
}

void drawBody(float x, float y, float w, float h){
  stroke(0);
  fill(3,4,67);
  rect(x-w/4,y-h/4.3,w/2,h/2);
}

void drawArmLegs(float x, float y, float w, float h){
  strokeWeight(8);
  stroke(255,253,208);
  line(x+w/3.3,y-h/5,x+w,y+h/8); //right arm
  line(x-w/3.3,y-h/5,x-w,y+h/8); //left arm
  
  line(x+w/3.3,y+h/4,x+w,y+h/1.7);
  line(x-w/3.3,y+h/4,x-w,y+h/1.7);
}

void setup(){
  size(700,700);
  
  smooth();
  drawHuman(x,y,w,h);
  drawHuman(150,200,100,400); //the test
}
