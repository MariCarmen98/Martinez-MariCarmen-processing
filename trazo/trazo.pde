int borrar = 0;
color pintura;

void setup() {
  size(400, 400);
  background(255);
  pintura = color(255, 0, 0);
}

void draw() {
  
  noStroke();
  fill(0, 0, 200);
  rect(0,350, 50, 50);
  fill(255, 0, 0);
  rect(50,350, 50, 50);
}

void mousePressed() {
  if (mouseX < 50 && mouseY > 350) {
    pintura = color(0, 0, 200);
  } else if(mouseX > 50 && mouseX < 100 && mouseY > 350) {
    pintura = color(255, 0, 0);
  }
}


void mouseDragged() {
  if (mouseY < 350){
    strokeWeight(10);
    stroke(pintura);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
