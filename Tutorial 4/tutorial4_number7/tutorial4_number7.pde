void setup(){
  String[] rows = loadStrings("T4q7.csv");
  int mc = 0;
  int fmc = 0;
  int agec = 0;
  
  size(200,200);
  for(int i = 1; i < 3; i++){
    println(rows[i]);
  }
  
  for (int i = 2; i < rows.length; i++){
    String cols[] = split(rows[i], ',');
    
    String gender = cols[4].trim();
    int birthYear = int(cols[5].trim());
    
    if(gender.equals("Male")){
      mc++;
    } else {
      fmc++;
    }
    
    if (birthYear > 2003){
      agec++;
    }
  }
  
  println("number of Males: " + mc);
  println("number of Females: " + fmc);
  println("bord after 2003: " +agec);
}
