float r; 
int fondo, contador;
PFont fuente;

void setup() {
  size(400, 400);
  ellipseMode(RADIUS);             //Para dibujar los círculos con el radio
  rectMode(CENTER);
  fondo = 0;
  fuente = loadFont("SansSerif-48.vlw");
  contador = 0;
}

void draw() {
 // background(r);   //pone de color el tamaño del radio
  background(fondo);
  
  fill(255);
  noStroke();
  ellipse(width/2, height/2, r, r);
  
  if (r > 100) {
    fondo =180;
  }else {
    fondo = 0;
  }
  
  if(contador % 2 == 0) {
    
  
  
  r = dist(mouseX, mouseY, width/2, height/2);   // distancia entre 2puntos (Guarda el módulo)
  println(r);
  
  fill(255, 0, 0);
  ellipse(mouseX, mouseY, 4, 4);            //PUNTO QUE ME SIGUE AL RATÓN
  ellipse(width/2, height/2, 4, 4);
  
  stroke(255, 0, 0);
  line(mouseX, mouseY, width/2, height/2);    //dibuja una linea desde xy iniciales, xy finales
  }
  textFont(fuente, 48);      //tamaño
  fill(0, 200, 100);          //color
  text(contador, 20, 60);
  
}


void mousePressed() {
  contador++;
}
