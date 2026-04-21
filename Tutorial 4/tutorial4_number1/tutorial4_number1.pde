void setup(){
  size(200, 200);
  
  for(int i = 0; i < 4 ; i++){
    color c1 = color(random(255), random(255), random(255));
    fill(c1);
    if(i == 1){
      translate(100,0);
    }
    else if(i == 2){
      translate(0,100);
    }
    else if(i==3) {
      translate(-100,0);
    }
    rect(0,0,100,100);
  }
}
