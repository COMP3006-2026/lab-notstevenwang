int n = 10;
int shape[] = new int[n];
float size[] = new float[n];
float w[] = new float[n];
float h[] = new float[n];
float l[] = new float[n];

float x[] = new float[n];
float y[] = new float[n];
float z[] = new float[n];

int r[] = new int[n];
int g[] = new int[n];
int b[] = new int[n];

void setup(){
  size(800,800, P3D);
  
  for(int i = 0; i < n ; i++){
    shape[i] = int(random(0, 2));
    size[i] = random(50, 150);
    w[i] = random(50,150);
    h[i] = random(50,150);
    l[i] = random(50,150);
    
    x[i] = random(0+150,width-150);
    y[i] = random(0+150,height-150);
    z[i] = random(0,100);
    
    r[i] = int(random(255));
    g[i] = int(random(255));
    b[i] = int(random(255));
  }
  
}

void draw(){
  lights();
  background(255);
  for(int i = 0; i < n; i++){
    if(shape[i] == 0){
      pushMatrix();
        translate(x[i], y[i], z[i]);
        fill(r[i],  g[i], b[i]);
        sphere(size[i]);
      popMatrix();
    } else if(shape[i] == 1){
      pushMatrix();
        translate(x[i], y[i], z[i]);
        fill(r[i],  g[i], b[i]);
        box(size[i]);
      popMatrix();
    } else if(shape[i] == 2){
      pushMatrix();
        translate(x[i], y[i], z[i]);
        fill(r[i],  g[i], b[i]);
        box(w[i], h[i], l[i]);
      popMatrix();      
    }
  }
  
}
