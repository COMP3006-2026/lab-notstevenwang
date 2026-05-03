PFont font;

String[] lines = new String[3];
int currentline = 0;

int txtS = 25;
int limit = 45;
boolean strike = false;

void setup(){
  size(1000,500);
  smooth(8);
  font = loadFont("ArialMT-32.vlw");
  textFont(font);
  for(int i = 0;  i < 3; i++){
    lines[i] = "";
  }
}

void draw(){
  background(255);
  
  noFill();
  rectMode(CENTER);
  rect(width-25,25,50,50);
  rect(width-75,25,50,50);
  rect(width-125,25,50,50);
  rect(width-225,25,100,50);
  textSize(14);
  text("+",width-25,25);
  text(txtS + "px", width-90,25);
  text("-",width-125,25);
  text("strikethrough", width-260,25);
  
  rect(500,250,800,300);
  
  line(width-100, 200,100,200);
  line(width-100, 300,100,300);
  for(int i = 0; i < 3; i++){
    textSize(txtS);
    fill(0);
    text(lines[i], 120, 150 + (i*100));
    if(strike){
      strokeWeight(2);
      stroke(255,0,0);
      line(120, 150 + (i*100) - txtS/2, 120 + textWidth(lines[i]), 150 + (i*100) - txtS/2);
    }
    strokeWeight(1);
    stroke(0);
  }
}

void mousePressed(){
  if(mouseX < width && mouseX > width-50 && mouseY > 0 && mouseY < 50 && txtS < 29){
    txtS+=2;
  }
  if(mouseX <  width-100 && mouseX > width-150 && mouseY > 0 && mouseY < 50 && txtS > 19){
    txtS-=2;
  }
  if(mouseX > width-275 && mouseX < width-175 && mouseY > 0 && mouseY < 50){
    strike = !strike;
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
    if(lines[currentline].length() < limit){
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
