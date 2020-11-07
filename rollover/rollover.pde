PFont font;
int fondo;
String a;
int locV;

void setup() {
  size(400, 400);
  fondo = 255;
  font = loadFont("Monospaced-48.vlw");
  textFont(font,  30);
  //textSize(50);     otra forma de poner la medida
  locV = 0;
  
}

void draw() {
  background(fondo);
  
  locV += 2;
  if (locV > height) {
    locV = 0;
  }
  
  noStroke();
  fill(255, 255, 0);
  rect(50, locV, 60, 60);
  rect(300, 100, 60, 60);  //60 de ancho y 60 de alto!
  
  if (mouseX>50 && mouseX<110 && mouseY>locV && mouseY<locV+60){
    fondo = 240;
    a= "Buenas tardes";
  } else if (mouseX>300 && mouseX<360 && mouseY>100 && mouseY<160) {
   fondo = 120;
   a= "Buenos días";
  } else {
    fondo = 50;
    a= "Buenas noches";
  }
  
  fill(200);
  text(a, 30, height-30);   //coordenadas del punto inferior izquierdo de donde empiezo a escribir
} 
