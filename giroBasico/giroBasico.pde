float angulo;

void setup() {
  size(400, 400);
  angulo = 0;
  noStroke();
  background(0);
}


void draw() {
  fill(0, 12);    
  rect(0, 0, width, height); 
  
  pushMatrix();
  translate(200, 200);
  rotate(angulo);  
  
  fill(255); 
  rect(-90, -90, 180, 180);  
  popMatrix();
  angulo += 0.02;  
  
} 
