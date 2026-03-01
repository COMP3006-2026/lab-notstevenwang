class Person {
  float x = 350;
  float y = 100;
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

Person[] people = new Person[10]; //this works because in processing, we are coding directly in main() unlike C++ or Java

void sortPeople(){
  for(int i = 0; i<10  ; i++){
    for(int j  = 0; j<9; j++){
      if(people[j].h > people[j+1].h){
        Person tempP;
        tempP = people[j];
        people[j] = people[j+1];
        people[j+1] = tempP;
      }
    }
  }
}

void setup(){
  fullScreen();
  
  for(int i = 0; i < 10 ; i++){
    if (i==0){
      people[i] = new Person(50, random(50,600), random(50,100), random(100,300), color(random(255),random(255), random(255)));
    } 
    else{
      people[i] = new Person(50, random(50,600), random(50,100), random(100,300), color(random(255),random(255), random(255)));
    }
    people[i].speedY = random(-5,5);
  }

  sortPeople();
  
  //rearranging the visual
  for(int i = 0; i <10; i++){
    people[i].x = 50 + i * 150;
  }
}  

void draw(){
  background(145);
  
  for(int i = 0; i<10; i++){
    people[i].move();
    people[i].drawHuman();
  }
  
  //noLoop(); //for checking how many people are created
}
