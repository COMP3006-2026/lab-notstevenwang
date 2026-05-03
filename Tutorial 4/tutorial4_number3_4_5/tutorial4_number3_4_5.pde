  color c1 = color(255,0,0);
  color c2 = color(0,0,255);
  color c3 = color(0,255,255);
  color c4 = color(255,255,0);
  int w = 200; 
  int h = 200;
  int a = 100;
  float angle = (PI/18);

void setup(){
  size(500,500);
}

void draw(){
    //rect 1 (no rotate)
    fill(c1);
    pushMatrix();
    translate(300,0);
    rect(0,0,w,h);
    popMatrix();
    
    //rect 1 (roatate 45 degree from its middle)
    fill(c1, 50);
    pushMatrix();
    translate(300+w/2,h/2);
    rotate(PI/4);
    rect(-w/2,-h/2,w,h);
    popMatrix();
    
    //rect 2 scale and roate
    for (int i = 1; i <= 5 ; i++){
      strokeWeight(0);
      fill(c2, a);
      pushMatrix();
      translate(250,250);
      scale(i*0.25);
      rotate(angle);
      rect(0,0,w,h);
      angle = angle + 0.2;
      a -= 5;
      popMatrix();
    }
    
    //rect 3 (rotate 90 from top left)
    fill(c3);
    pushMatrix();
    rect(200,100,w/2,h/2);
    
    fill(c3, 50);
    translate(200,100);
    rotate(PI/2);
    rect(0,0,w/2,h/2);
    popMatrix();
    
    //rect 4
    strokeWeight(0);
    fill(c4);
    pushMatrix();
    translate(250,10);
    rotate(PI/5);
    rect(0,0,w/5,h/5);
    popMatrix();
    
    noLoop();
}
