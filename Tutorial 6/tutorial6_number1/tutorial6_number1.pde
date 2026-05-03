PImage img[] = new PImage[2];

void setup(){
  size(500,500);
  img[0] = loadImage("tutorial6pic1.jpg");
  img[1] = loadImage("tutorial6pic2.jpg");
  
  img[0].resize(500,500);
  img[1].resize(500,500);
}

void draw(){
  imageMode(CORNER);
  image(img[1], 0, 0);
  pushMatrix();
    translate(width, 0);
    rotate(PI/2);
    image(img[0], 0, 0);
  popMatrix();
  
  noFill();
  stroke(255,0,0);
  copy(img[1],mouseX, mouseY, 100, 100, mouseX, mouseY, 100, 100);
  
  stroke(255,0,0);
  rect(mouseX, mouseY, 100, 100);
}
