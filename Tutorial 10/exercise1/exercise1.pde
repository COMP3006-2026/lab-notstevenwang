int x, y, ty, z;

void setup(){
  size(800,800,P3D);
}

void draw(){
  background(0);
  lights();
  noStroke();
  fill(255,50,255);
  
  x = mouseX;
  if(keyPressed && keyCode == SHIFT){
    if((mouseY - pmouseY)<0){
      z-=20;
    }
    else if ((mouseY - pmouseY)>0){
      z+=20;
    }
    println(z);
    translate(x, ty, z);
  }
  else {
    y = mouseY;
    ty = y;
    translate(x, y, z);
  }
  
  sphere(100);
}
