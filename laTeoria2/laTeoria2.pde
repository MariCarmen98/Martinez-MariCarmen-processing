
void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  
}

void colorearForma() {
  color c = color(mouseX/2, mouseY/2, 0);
  fill(c);
}

void dibujaCirculo(int diametro, int linea, int gris){
  strokeWeight(linea);
  stroke(gris);
  ellipse(mouseX, mouseY, diametro, diametro);
}

int calculaTriple(int num){
  int resultado = num * 3;
  return resultado;
}

void mousePressed () {
  colorearForma();                  //también puedo llamar a "color
  
  int cajita = calculaTriple(40);
  
  dibujaCirculo(cajita, 5, 0);
}
