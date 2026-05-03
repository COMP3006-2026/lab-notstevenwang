int xr1 = 100;
int xc2 = 500;
int yr1 = 100;
int yc2 = 100;
int pressed = 1;

void setup(){
  size(600,300);
  smooth(8);
  rectMode(CENTER);
  ellipseMode(CENTER);
}

void draw(){
  background(255);
  strokeWeight(0);
  fill(255,0,0);
  rect(xr1,yr1,100,100);
  fill(0,0,255);
  ellipse(xc2,yc2,100,100);
}

void keyPressed(){
  if(keyPressed){
    if (key == '1'){
      pressed = 1;
    }
    else if (key == '2'){
      pressed = 2;
    }
  }
  
  if(keyPressed && pressed == 1){
    //left 
    if(keyCode == LEFT){
      xr1 -= 7;
    }
    //right
    else if(keyCode == RIGHT){
      xr1 += 7;
    }
    //up  
    if (keyCode == UP){
      yr1 -= 7;
    }
    //down
    else if (keyCode == DOWN){
      yr1 += 7;
    }
  }
  if (keyPressed && pressed == 2){
    if(keyCode == LEFT){
      xc2 -= 7;
    }
    //right
    else if(keyCode == RIGHT){
      xc2 += 7;
    }
    //up  
    if (keyCode == UP){
      yc2 -= 7;
    }
    //down
    else if (keyCode == DOWN){
      yc2 += 7;
    }
  }
}
