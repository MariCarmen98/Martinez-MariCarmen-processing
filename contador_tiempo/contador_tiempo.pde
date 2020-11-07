

int contador, locH;

void setup() {
  size(400, 400);
  locH =0;
  
  frameRate(10);
  contador = 0;
}

void draw() {
  background(0);
  
  if (contador <= 50) {
    fill(255,0,0);
    ellipse(200, 200, 100, 100);
    
    
  } else if (contador > 50 && contador < 100) {
    fill(0,255,0);
    rect(200, 200, 100, 100);
  } else {
    
    contador = 0;
  }
  
  contador++;
  
 
 
}
