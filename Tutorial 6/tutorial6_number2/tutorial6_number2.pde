PImage img[] = new PImage[1];

void setup(){
  size(500,500);
  img[0] = loadImage("tutorial6pic1.jpg");
  
  img[0].resize(500,500);
}

void draw(){
  imageMode(CORNER);
  pushMatrix();
    translate(width, 0);
    rotate(PI/2);
    image(img[0], 0, 0);
  popMatrix();
  
  loadPixels();
    for(int x = mouseX; x < mouseX + 50 && x < width; x++){
      for(int y = mouseY; y < mouseY + 50 && y < height; y++){
        int pxl = x + y * width;
        color clr = pixels[pxl];
        pixels[pxl] = color(min(red(clr)+50, 255), min(blue(clr)+50,255), min(green(clr)+50,255));
      }
    }
  updatePixels();
}
