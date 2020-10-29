
void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  
}

void mousePressed () {
  colorearForma();                  //también puedo llamar a "color
  ellipse(mouseX, mouseY, 40, 40);
}
void colorearForma() {
  color c = color(255, 255, 0);
  fill(c);
}
