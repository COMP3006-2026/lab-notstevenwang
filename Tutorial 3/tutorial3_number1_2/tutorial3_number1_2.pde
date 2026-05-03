int insideY = 130;
int tipY = 10;
int start = 20;

size(640,200);

smooth(100);

fill(0);
beginShape();
vertex(20,200);
int i = 0;

vertex(start = start + 20, tipY);
vertex(start = start + 20, insideY);
vertex(start = start + 20, insideY);

while(i<8){
  vertex(start = start + 20, tipY);
  vertex(start = start + 20, insideY);
  vertex(start = start + 20, insideY);
  i++;
}
vertex(start = start + 20, tipY);
vertex(start = start + 20, 200);

endShape(CLOSE);
