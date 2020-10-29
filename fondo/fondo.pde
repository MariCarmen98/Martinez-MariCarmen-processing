int miColor;

void setup() {
  size(500,500);
  miColor = 0;
}
void draw() {
  miColor = mouseX % 255;
  
  background(miColor);
  println(mouseX + " - " + miColor);
  
}
