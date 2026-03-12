class Shapes{
  float x, y;
  boolean selected;
  
  Shapes(float x, float y){
    this.x = x;
    this.y = y;
    this.selected = false;
  }
  
  boolean onShape(float mx, float my){
    return(mx > x/2 && mx < x/2 && my > y/2 && my < y/2); //alwayys false but doesnt matter cur ovverridde
  }
  
  void dragged(float mx, float my){
    if (selected){
      x = mx;
      y = my;
    }
  }
  
  void drawShape(){}

}

class Rect extends Shapes{
  float w, h;
  color c;
  
  Rect(float x, float y, float w, float h){
    super(x,y);
    this.w = w;
    this.h = h;
    this.c = color(random(255), random(255),random(255));
  }
  
  boolean onShape(float mx, float my){
    return(mx > x-w/2 && mx < x+w/2 && my > y-h/2 && my < y+h/2 );
  }
  
  void drawShape(){
    fill(c);
    rectMode(CENTER);
    rect(x,y,w,h);
  }

}

class Circle extends Shapes{
  float r;
  color c;
  
  Circle(float x, float y, float r){
    super(x,y);
    this.r = r;
    this.c = color(random(255), random(255), random(255));
  }
  
  boolean onShape(float mx, float my){
    return dist(mx,my,x,y) < r;
  }
  
  void drawShape(){
    fill(c);
    ellipseMode(CENTER);
    ellipse(x, y, r, r);
  }
}
