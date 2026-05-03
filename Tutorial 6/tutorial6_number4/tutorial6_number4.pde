PImage img;
PImage divided[] = new PImage[4];


void setup(){
  size(500,500);
  img = loadImage("tutorial6pic1.jpg");
  
  //array tech
  divided[0] = img.get(0,0, width, height/4);
  divided[1] = img.get(0,height/4,width,height/4);
  divided[2] = img.get(0,height/2,width,height/4);
  divided[3] = img.get(0,height*3/4,width,height/4);
}

void draw(){
  //array tech
  //image(divided[0],0,0);
  //image(divided[1],0, height/4);
  //image(divided[2],0, height/2);
  //image(divided[0],0,height*3/4);
  
  //pixels tech
  image(img, 0,0);
  loadPixels();
    for (int x = 0; x <  width ; x++){
      for(int y = 0; y < height/4  ; y++){
        int firstPxl = x+y*width;
        int lastPxl = x+(y + height*3/4) * width;
        
        pixels[lastPxl] = pixels[firstPxl];
      }
    }
  updatePixels();
  
  loadPixels();
    for(int x = 0; x < width ; x++){
      for(int y = 0; y < height  ; y++){
        int pxl = x + y * width;
        color c = pixels[pxl];
        pixels[pxl]=color(red(c), blue(c)*0.2,green(c)*0.2);
      }
    }
  updatePixels();
}
