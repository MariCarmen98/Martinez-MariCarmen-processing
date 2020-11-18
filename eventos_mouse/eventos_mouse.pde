float x;
color[] listaColores = new color [4];
int numColor;
int gris;
float lado;
int sentido;

void setup() {
  size(400, 400);
  x = 50;
  noStroke();
  
  listaColores[0] = color(30, 220, 220);
  listaColores[1] = color(170, 70, 220);
  listaColores[2] = color(255, 180, 30);
  listaColores[3] = color(150, 150, 150);
  
  numColor = 0;
  gris = 150;
  lado = 60;
  sentido = 1;
}

void draw () {
  background(255);
  fill(0);
  rect(170, 120, 60, 60);
  
  if(mouseX > 170 && mouseX <230 && mouseY > 120 && mouseY <180) {
    fill(listaColores[numColor]);
    ellipse(x,50, 80, 80);
  }
    fill(gris);
    rect(width/2 -lado/2, 300-lado/2, lado, lado);
    if(mousePressed && mouseX > width/2 -lado/2 && mouseX < width/2 +lado/2 && 
                       mouseY > 300-lado/2 && mouseY <300+lado/2) {
                         
                         gris += 3*sentido;
                         
               if (gris > 240 || gris < 0) {
                 sentido *= -1;
               }
                       }
}

void mousePressed() {
  if(mouseX > 170 && mouseX <230 && mouseY > 120 && mouseY <180) {
   int nuevo = int(random(4));      //variable interna
    
    if (nuevo == numColor) {    //comparo el num que me ha salido con el anterior
      if(numColor == 3) {
        nuevo = int(random(listaColores.length-1));      //si sale 3, ya no sumo uno, sale un numero random menor que 3
      }else {
        nuevo++;
    }
    }
    numColor = nuevo;      //la variable, cuando acaba se convierte en nuevo
    println(numColor);
}
}

void mouseReleased() {
   if(mouseX > 170 && mouseX <230 && mouseY > 120 && mouseY <180) {
   
     x = random(40,360); 
     
   }else if (mouseX > width/2 -lado/2 && mouseX < width/2 +lado/2 && 
                       mouseY > 300-lado/2 && mouseY <300+lado/2) {
                       
      lado = random (20, 200);                   //el lado crece entre 20 y 200
   
   }
}
