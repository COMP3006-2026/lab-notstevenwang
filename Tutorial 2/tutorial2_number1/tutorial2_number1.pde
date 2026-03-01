int x1 = 30;
int y1 = 30;
int x2 = 30;
int y2 = 180;
int x3 = 30;
int y3 = 330;
int w = 200;
int h = 100;
boolean button = false;

void setup(){
  size(500,460); //width , height
  background(255,255,255);
}

void draw(){
  if (mouseX > x1 && mouseX < x1+w && mouseY > y1 && mouseY < y1+h){
    fill(255,0,0);
  } else {
    fill(200);
  }
  rect(x1,y1,w,h);
  
  if (mouseX > x2 && mouseX < x2+w && mouseY > y2 && mouseY < y2+h){
    fill(0,255,0);
  } else {
    fill(200);
  }
  rect(x2,y2,w,h);
  
  if (mouseX > x3 && mouseX < x3+w && mouseY > y3 && mouseY < y3+h){
    fill(0,0,255);
  } else {
    fill(200);
  }
  rect(x3,y3,w,h);
}
