Rect rect1;
Circle circ1;

void setup(){
  size(500,500);
  smooth(8);
  
  float w = random(40,200);
  float h = random(40,200);
  float r = random(10,150);
  
  for(int i = 0; i < 2; i++){
    float x = random(50,width);
    float y = random(50,height);    
    
    if(i == 0){
      rect1 = new Rect(x,y,w,h);
    }
    else{
      circ1 = new Circle(x,y,r);
    }
  }
}

void draw(){
  background(255);
  
  rect1.drawShape();
  circ1.drawShape();
}

void mousePressed(){
  if(rect1.onShape(mouseX, mouseY)){
    rect1.selected = true;
    circ1.selected = false;
  } else {
    circ1.selected = circ1.onShape(mouseX, mouseY);
    rect1.selected = false;
  }
}

void mouseDragged(){
  rect1.dragged(mouseX, mouseY);
  circ1.dragged(mouseX, mouseY);
}
