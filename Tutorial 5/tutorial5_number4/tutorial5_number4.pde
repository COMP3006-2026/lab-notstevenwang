PFont font;

String[] lines = new String[3];
int currentline = 0;

void setup(){
  size(800,300);
  textSize(20);
  fill(0);
  font = createFont("Arial", 32, true);
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
  // Handle backspace: delete last character or move to previous line
  if (key == BACKSPACE){
    if(lines[currentline].length() > 0){
      lines[currentline] = lines[currentline].substring(0, lines[currentline].length()-1);
    } else if (currentline > 0) {
      currentline--;
    }
  }
  // Handle newline: treat both ENTER and RETURN as "next line"
  else if (key == ENTER || key == RETURN){
    if(currentline < 2){
      currentline++;
    }
  }
  // Handle normal text input: only non-CODED printable characters
  else if (key != CODED && key >= ' ' && key != DELETE){
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
