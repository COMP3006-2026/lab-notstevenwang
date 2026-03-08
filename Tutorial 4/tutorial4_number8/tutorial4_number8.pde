void setup(){
  size(1000,400);
  String rows[] = loadStrings("T4q8.csv");
  
  String weekdays[] = split(rows[5], ',');
  String saturday[] = split(rows[9], ',');
  String sunday[] = split(rows[13],',');
  
  String quarter[] = split(rows[0],',');
  
  for (int i = 1; i < 9 ; i++){
    println(quarter[i]);
    print("weekdays: " + weekdays[i]  + "\n");
    print("saturdayy: " + saturday[i]  + "\n");
    print("sunday: " +   sunday[i]  + "\n");
  }
  
  smooth(8);
  createGrid();
  drawCircles(weekdays, saturday, sunday, quarter);
  
}

void createGrid(){
  
  for (int i = 100; i < 400 ; i+=100){
    line(0,i,width,i);
  }
  
  for(int i = 100; i < 1000; i+=100){
    line(i, 0, i, height);
  }
}

void drawCircles(String[] weekdays, String[] saturday, String[]sunday, String[]quarter){
   int x = 120;
   int xc = 150;
   int yc = 150;
   for (int i = 1; i <= 9; i++){
    fill(0);
    textSize(20);
    text(quarter[i], x, 50);
    
    float weekdaysV = float(weekdays[i].trim());
    float saturdayV = float(saturday[i].trim());
    float sundayV = float(sunday[i].trim());
    
    float totalWV = 0;
    float totalSatV = 0;
    float totalSV = 0;
    
    for (int j = 1; j<=9;j++){
      totalWV += float(weekdays[j].trim());
      totalSatV += float(saturday[j].trim());
      totalSV += float(sunday[j].trim());
    }
    
    float r1m = map(weekdaysV, 0, totalWV, 50, 100);
    fill(255, 50, 50);
    circle(xc, yc, r1m);
    
    float r2m = map(saturdayV, 0, totalSatV, 50, 100);
    fill(255,255,0);
    circle(xc, yc+100, r2m);
    
    float r3m = map(sundayV, 0, totalSV, 50, 100);
    fill(100,200,100);
    circle(xc, yc+200, r3m);
    
    x+=100;
    xc+=100;
  }
  
  for(int i = 1; i<=3; i++){
    fill(0);
    if(i==1){
      text("Weekday: ", 10, yc);
      yc += 100;
    } else if (i==2){
      text("Saturday: ", 10, yc);
      yc+= 100;
    } else if (i==3){
      text("Sunday: ", 10, yc);
      yc = 150;
    }
  }
}
