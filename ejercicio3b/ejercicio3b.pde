// Se dibujan circulos de 20 de diámetro y separados unos de otros por 25 pixeles. Se dibujará tantos como
// quepan en la distanca que va hasta "posH". "tam" es la altura del vertical del rectángulo que se traslada.

float posH, tam, r;

int numCir; //entposH; // Número de círculos que se van a dibujar, que depende de "posH" (distancia
// desde la ccordenada horizontal 0 hasta donde comienza el rectángulo vertical)

float gris; // Variable que se utiliza para el color RGB del rectángulo


void setup(){
  size(400,400);
  smooth();
  r = dist(0, 210, posH, 210);   // distancia entre 2puntos
 
 
}

void draw(){
  background(255);
  
  fill(255);
  stroke(0);
  //rect(20,330,50,50);
  rect(300,320,50,50);
  fill(0);
  
  //rect(0, 200, posH, 20);
  if(r ) {
    numCir =
  }
  fill(255,0,128);
  ellipse(0,200,20,20);
 
  
  noStroke();  
  fill(gris, 0, 0);  //morado 120, 40, 140
  rect(posH, 210-tam/2, 20, tam);  
  
  
 
 if(mouseX>300 && mouseX<350 && mouseY>320 && mouseY<370) {
    posH = map(mouseX, 300, 350, 0, width-20); 
    tam = map(mouseY, 320, 370, height, 0);
    gris = map(mouseY, 220, 380, 255, 0);
    
 }
} // Aquí se cierra el "draw"
