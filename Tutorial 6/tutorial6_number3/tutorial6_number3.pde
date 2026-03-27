PImage img;
PImage canvas;
PImage copiedImg;
int x,y,px,py;
boolean copyOn;

void setup(){
  size(500,500);
  
  img = loadImage("tutorial6pic1.jpg");
}

void draw(){
  image(img,0,0);
  
  if(mousePressed){
    noFill();
    stroke(0,255,0);
    rect(x, y, mouseX - x, mouseY - y);
  }
}

void mousePressed(){
  x = mouseX;
  y = mouseY;
  
  if(copyOn){
    img.copy(copiedImg, 0, 0, copiedImg.width, copiedImg.height, mouseX, mouseY, copiedImg.width, copiedImg.height);
  }
}

void mouseReleased(){
  copyOn = true;
  px = mouseX - x;
  py = mouseY - y;
  
  copiedImg = img.get(x, y, px, py);
}
