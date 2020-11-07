float angulo;
int locH;
float esc;

void setup() {
  size(400, 400);
  angulo = 0;
  locH = 0;
  esc = 1;
}

void draw () {
  background(0);
  
  pushMatrix();
  translate(locH, 200);
  scale(esc);
  rotate(radians(angulo));
  noStroke();
  rect(-45, -45, 90, 90);
  popMatrix();
  
  angulo += 5;
  locH += 2;
  
  if (locH > 400){
    locH = 0;
  }
  
  esc += 0.01;
  
}

void mousePressed() {
 esc = 1; 
}
