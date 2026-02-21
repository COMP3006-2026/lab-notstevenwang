int x = 10;
int y = 10;
int s = 500;
int row = 0;

void setup(){
  size(500,500);
}

void draw(){
  while(row < s){
    
    int col = 0;
    while(col<s){
      fill(random(0,255));
      rect(row,col,x,y);
      col = col + 10;
    }
    row = row + 10;
  }
  row = 0;
  //noLoop(); makes draw() that is a loop (like act() in clara) to only run once.
}
