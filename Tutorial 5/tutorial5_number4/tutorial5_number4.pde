PFont font;

String[] lines = new String[3];
int currentline = 0;

void setup(){
  size(800,300);
  textSize(20);
  fill(0);
  font = loadFont("ArialMT-32.vlw");
  textFont(font);
  for(int i = 0;  i < 3; i++){
    lines[i] = "";
  }
}

void draw(){
  background(255);
  line(width,100,0,100);
  line(width,200,0,200);
  for(int i = 0; i < 3; i++){
    text(lines[i], 20, 50 + (i*100));
  }
}

void keyPressed(){
  if (keyPressed && keyCode == BACKSPACE){
    if(lines[currentline].length() > 0){
      lines[currentline] = lines[currentline].substring(0, lines[currentline].length()-1);
    } else if (currentline > 0) {
      currentline--;
    }
  }
  else if (keyPressed && keyCode == ENTER){
    if(currentline < 2){
      currentline++;
    }
  }
  else if (keyPressed){
    if(lines[currentline].length() < 50){
      lines[currentline] += key;
      println(lines[currentline]);
    } else {
      if(currentline < 2){
        currentline++;
        lines[currentline] += key;
      }
    }
  }
}
