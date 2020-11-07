PImage princesa;
float ancho, alto, angulo, num; 

void setup() {
  size(500, 500);
  princesa = loadImage("princesaLeia.jpg");      //nombre del archivo en el pc
  ancho = princesa.width / 2;
  alto = princesa.height / 2;
  angulo = 0;
  num = 2;
}

void draw() {
  background(240); 
  
  pushMatrix();
  translate(width/2, height/2);    //trasladada al punto (0,0)
  rotate(radians(angulo));
  scale(num);
  
  angulo += 2;
  num += 0.01;
  
  if (num > 6) {
   num =1; 
  }
  
  image(princesa, -ancho/2, -alto/2, ancho, alto);
   crearReticula();
  popMatrix();
// crearReticula();
  
}

//creamos función que dibuje lineas de color gris
void crearReticula() {
  stroke(200);
  
  for(int i=0; i< height; i+= 20) {    //va desde 0 hasta 500 separandose de 20 en 20
    line(i, 0, i, height);
  }
  
  for(int i=0; i< width; i+= 20) {    //lineas horizontales
    line(0, i, width,i);
  }
}
