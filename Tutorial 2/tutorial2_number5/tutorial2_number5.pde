class Person {
  float x = 350;
  float y = 350;
  float w = 100;
  float h = 400;
  color shirtColor;
  float speedX, speedY;

  
  Person(float x, float y, float w, float h, color shirtColor){
    this.x = x; //set the x as the parameter that is being used in Person(float x);
    this.y = y;
    this.w = w;
    this.h = h;
    this.shirtColor = shirtColor;
    this.speedX = 0;
    this.speedY = 0;
  };
  
  void drawHuman(){
    drawHead();
    drawBody();
    drawArmLegs(); 
  };
  
  void drawHead(){
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
  
  void drawBody(){
    stroke(shirtColor);
    fill(shirtColor);
    rect(x-w/4,y-h/4.3,w/2,h/2);
  }

  void drawArmLegs(){
    strokeWeight(8);
    stroke(255,253,208);
    line(x+w/3.3,y-h/5,x+w,y+h/8); //right arm
    line(x-w/3.3,y-h/5,x-w,y+h/8);
    
    line(x+w/3.3,y+h/4,x+w,y+h/1.7); //right leg
    line(x-w/3.3,y+h/4,x-w,y+h/1.7);
  }
  
  void move(){
    y = y + speedY;
    if(y > height || y < 0){
      speedY = -speedY;
    }
    
    x = x + speedX;
    if(x > width || x < 0 ){
      speedX = -speedX;
    }
  }
};

Person p1, p2, p3, p4; //this works because in processing, we are coding directly in main() unlike C++ or Java

void setup(){
  fullScreen();
  
  p1 = new Person(350,450,100,200, color(234,56,78));
  p1.speedX = 4;
  p2 = new Person(344, 255,200,300, color(160,251,153));
  p2.speedY = -2;
  p3 = new Person(70, 500, 130, 200, color(30,90,60));
  p3.speedY = -50;
  p4 = new Person(600, 670, 100, 100, color(30,40,50));
  p4.speedX = -4;
}

void draw(){
  background(0,175,255);
  
  p1.move();
  p1.drawHuman();
  p2.move();
  p2.drawHuman();
  p3.move();
  p3.drawHuman();
  
  p4.drawHuman(); //no difference in move first or drawHuman first, just if draw first, it is slower 1 frame
  p4.move();
}
