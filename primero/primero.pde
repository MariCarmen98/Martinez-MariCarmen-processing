int a, incre;                              //declaro la variable

void setup() {
  size(500, 500);
  a = 100;   //le doy un valor incial
  incre = 4;


}
void draw() {
  background (255);                 //fondo (color) si es un numero es escala de grises
 
  fill(200, 20, 20);                //color de relleno (r,g,b)
  noStroke();                       //para que no tenga controno
  ellipse(a, 250, a, a);          //elipse (coordenadas y medidas)
  
  if (a > 500) {
    a = 0;
  }
  
  a += incre;                           //le sumamos 4 cada vez que ya hemos visualizado un fotograma
  
  fill(180);
  rect(20,20, 40, 40);
}
void mousePressed() {
  
  if (mouseX > 20 && mouseX < 60 && mouseY > 20 && mouseY < 60) {
  incre = int(random(20));
  } else {
    incre = 0;

  }
}
