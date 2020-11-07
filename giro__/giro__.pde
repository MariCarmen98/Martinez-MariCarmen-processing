float angulo, angulo2;
int locH;
float esc;

void setup() {
  size(400, 400);
  angulo = 0;
  angulo2 = 0;
  locH = 0;
  esc = 1;
  background(0);
}

void draw() {
  
  //background(0);
  fill(0, 12);    
  rect(0, 0, width, height); 
  
  pushMatrix();
  
  translate(locH, 200);
  scale(esc);
  rotate(radians(angulo));
  noStroke();
  fill(255);
  rect(-45, -45, 90, 90);
  popMatrix();
  
 angulo += 2;
 locH += 2;
 
 if (locH > 400) {
   locH = 0;
 }
 
 esc += 0.01;
 
  pushMatrix();
  
  translate(300, 300);
  rotate(radians(angulo2));
  noStroke();
  fill(255);
  rect(-30, -30, 60, 60);
  popMatrix();
  
  angulo2 -= 5;
  
}

void mousePressed() {
  esc = 1;
}
