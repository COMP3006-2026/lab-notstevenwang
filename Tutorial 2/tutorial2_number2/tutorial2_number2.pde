int x = 10;
int y = 10;
int s = 500;

void setup(){
  size(500,500);
}

void draw(){
  for(int row = 0; row < s; row = row+10){
    for(int col = 0; col< s; col = col+10){
      fill(random(0,255));
      rect(row,col,x,y);
    }
  }
  //noLoop(); makes draw() that is a loop (like act() in clara) to only run once.
}
