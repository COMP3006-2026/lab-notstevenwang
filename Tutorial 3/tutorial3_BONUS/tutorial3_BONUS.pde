void setup(){
  size(600,600);
  background(255);
  
  smooth(500);
  
  //creating the axes
  strokeWeight(1.65);
  //x-axis
  line(0, height/2, width, height/2);
  //y-axis
  line(width/2, 0, width/2, height);
  
  //creating the curve
  float xMin = -4, xMax = 4;
  float yMin = -10, yMax = 10;
  
  stroke(0, 100, 255);
  strokeWeight(1.34);
  
  float prevX = 0;
  float prevY = map(1 - pow(map(0, 0, width, xMin, xMax), 4), yMin, yMax, height, 0);  //map((1-(map (x=0 in 0-600 to xmin and xmax)^4, ymin, ymax, heigh, 0);
  
  for(int x = 1; x <= width ; x++){
    float pX = map(x, 0, width, xMin, xMax);
    float y = 1 - pow(pX, 4);
    float pY = map(y, yMin, yMax, height, 0);
    
    //map converts 0 - 600 to -4 to 4, such as 0 becomes -4 and 600 becomes 4 and the value of x where first it was between 0 - 600 will be converted to the value when it is between -4 and 4
    
    line(prevX, prevY, x, pY);
    prevX = x;
    prevY = pY;
  }
}
