void setup(){
  String[] format = loadStrings("data.txt");
  
  size(300,300);
  background(255);
  
  String[] names;
  String[] nums;
  
  for(int i = 0; i<format.length ; i++){
    names = split(format[i], ' ');
    nums = split(names[1], ',');
    
    if (names[0].equals("ellipse"))  {
      ellipse(float(nums[0]),float(nums[1]), float(nums[2]), float(nums[3]));
    } else if (names[0].equals("line")){
      line(float(nums[0]),float(nums[1]), float(nums[2]), float(nums[3]));
    } else if (names[0].equals("rect")){
      rect(float(nums[0]),float(nums[1]), float(nums[2]), float(nums[3]));
    }
    
  }
}
