PrintWriter output;
String startTxt = "Inputted numbers: ";
String inputNum = "";
boolean flag = false;

void setup(){
  size(400,200);
  fill(0);
  textSize(20);
  smooth(8);
  output = createWriter("tutorial4_number6.txt");
}

void draw(){
  background(255);
  text(startTxt + "\n", 5, 50);
  text(inputNum, 5, 100);
}

void keyPressed(){
  if (key >= '0' && key <= '9' || key == '.'){
    if(key == '.'){
      flag = true;
    }
    inputNum += key;
  } else if (key == ' '){
    if (flag == true){
      flag = false;
      float num = float(inputNum);
      output.println(nf(num,6,4));
    } else {
      int num = int(inputNum);
      output.println(nf(num,10));
    }
    inputNum = "";
  } else if (key == ENTER) {
    output.flush();
    output.close();
    exit();      
  }
}
