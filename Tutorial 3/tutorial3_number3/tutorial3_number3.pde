size(500,500);

noFill();
smooth();
beginShape();
vertex(240,50);

vertex(240,100);
bezierVertex(180,90,190,140,200,160);

//vertex(200,160);
bezierVertex(150, 230, 160, 300, 250, 300);

//vertex(250,300);
bezierVertex(290,300, 380,290, 300,160);

//vertex(300, 160);
bezierVertex(330,110, 290,90, 260,100);

vertex(260,50);

endShape(CLOSE);
