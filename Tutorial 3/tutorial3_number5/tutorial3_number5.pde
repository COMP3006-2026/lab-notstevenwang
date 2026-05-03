size(700, 100);
background(150);
noStroke();
fill(0);
float angle = 0.0;      //the angle that is being fed to the sin at the startt
float scaleVal = 40.0;  //sin returns -1 and 1 (too small) so wee scale it
float angleInc = PI/30; //how fast the angle grows
float offset = 50;      //sin starts at y=0 , so we pull it down to y=50

for (int x = 0; x <= width; x++) {

  fill(255);
  float y = offset + sin(angle) * scaleVal;
  rect(x, y, 2, 4);
  angle += angleInc;
  
  fill(0);
  float yc = offset + cos(angle) * scaleVal;
  rect(x, yc, 2, 4);
}
