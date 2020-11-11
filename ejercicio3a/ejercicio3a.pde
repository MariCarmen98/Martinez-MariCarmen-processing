// "posH" el ancho del rectángulo horizontal y "tam" la altura del vertical. La otra medida de los rectángulos es 20.

float posH, tam;

void setup(){
  size(400,400);
  smooth();
}

void draw(){
  background(255);
  
  fill(255);
  stroke(1);
  rect(20,330,50,50);
// Escribir el código que falta
  fill(0);
  rect(0, 200, posH, 20);
  //rect(posH, 210, 20, -tam);
  rect(posH, 210-tam/2, 20, tam);     /*para que el punto inicial (x,y) 
  delrectángulo vertical, la "y" no se mantenga fija, si no que suba a 
  la vez que el tamaño crece. colocamos el punto inicial 210 en la mitad 
  de su tamaño siempre "tam/2". Tambien se puede hacer cambiando el punto de
  origen del rectángulo con el rectMode*/ 
 
 if(mouseX>20 && mouseX<70 && mouseY>330 && mouseY<370) {
    posH = map(mouseX, 20, 70, 0, width-20); 
    tam = map(mouseY, 370, 330, height, 0);
    
 }
} // Aquí se cierra el "draw"
