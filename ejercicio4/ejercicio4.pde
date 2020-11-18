/*Al pasar por encima del cuadrado, éste se colorea de verde, Además, mientras me muevo por el cuadrado de izquierda a derecha, el círculo crece.
Nada más presionar el cuadrado con el mouse el contador suma 1. Si, además,
lo mantenemos presionado ocurren 3 cosas. Por una parte el cuadrado se colrea de azul y en su
centro aparece un círculo blanco, por otra, se dibuja una linea desde el cuadrado al círculo, y por último, el círculo rojo se mueve de la forma siguiente:
se traslada de izquierda a derecha y cuando sale por la derecha vuelve a la coordenada 0 y
además da unsalto hacia abajo.
Al liberar el mouse del cuadrado el número toma una posición aleatoria y su tamaño cambia en función de la distancia entre el cuadrado y el círculo
*/

float coX, coY; // Coordenadas del círculo
float posXTex, posYTex; // Coordenadas del numero
color colCuad; // Color del cuadrado
int cont; // Contador de "mousePressed"
float diam; // Diámetro del círculo;
int distancia; // distancia entre el cuadrado y el círculo.

void setup(){
  size(400,400);
  smooth();
  
  coX=40;
  coY=60;
  
  posXTex= width/2;
  posYTex= 160;
  
  colCuad= color(0);
 
  PFont fuente;
  fuente = loadFont("SansSerif-140.vlw");
  textFont(fuente);
 
  cont=0;
  
  diam= 40;
  
  distancia = 200;
}

  void draw(){
  background(255);
  
  noStroke();
  fill(colCuad);
  rect(170 ,280 , 60,60);
  
  fill(200,0,0);
  ellipse(coX,coY,diam,diam);
 
  fill(0);
  
  text(cont, posXTex,posYTex);
  
  if (mouseX > 170 && mouseX <230 && mouseY > 280 && mouseY <340) {
   colCuad= color(0, 255, 0);
   diam = map(mouseX, 170, 230, 20, 100);
  //} else { colCuad= color(0);
  }
  if (mousePressed && mouseX > 170 && mouseX <230 && mouseY > 280 && mouseY <340) {

    noStroke();
    fill(255);
    ellipse(200, 310,40,40);
    
    colCuad= color(0, 0, 255);
    
   distancia = int(dist(200, 310, coX, coY));
   println(distancia);
   stroke(200, 0, 150);
   line(200, 310, coX, coY);
   
   coX += 5;
   
   if (coX> width) {     //width me guarda el ancho de la ventana, asi no tengo que saber cuanto mide
 coX=0;  
 coY += diam;
  
   }
   if (coY> height) {     //width me guarda el ancho de la ventana, asi no tengo que saber cuanto mide
 coY=0;  

  }
}

  }
  


void mousePressed() {
  if (mouseX > 170 && mouseX <230 && mouseY > 280 && mouseY <340) {
    cont ++;
  }
}

  
//void mouseDragged() {
  


void mouseReleased() {
  if (mouseX > 170 && mouseX <230 && mouseY > 280 && mouseY <340) {
    posXTex = random(0,width-50); 
    posYTex = random(0,height-50);
    textSize(distancia/2); //Aquí hay que poner el tamaño del texto
  }
}
