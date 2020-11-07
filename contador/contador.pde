float x, y, r, g, b;
int dim;
PFont font;
String[] listaFrutas = {"melón", "naranja", "kiwi", "plátano", "manzana"};

int contador;

void setup() {
  size(400,400);
  font = loadFont("SansSerif-48.vlw");
  background(0);                        //ponemos aqui el background para que se superpongan unos fotogramas con otros
  frameRate(1);
}

void draw() {
  
  
  fill(0,40);
  rect(0, 0, width, height);   //capa de transparencia, que al superponerse acaban borrando las palabras que quedan detrás
  
  x = random(-50, width-50);   //los mas y menos son para centrar mas las palabras y que no se salgan del cuadrado
  y = random(10, height+10);
  r = random(255);
  g = random(255);
  b = random(255);
  dim = int(random(12,50));
 // palabra = int(random(5));
  

  
  textFont(font, dim);
  
  fill(r, g, b);
  
  //text(listaFrutas[contador], x, y);
  text(listaFrutas[contador % 5], x, y);
  contador++;
  
 /* if (contador > 4){
  contador = 0;
  }*/
  
 /* if (contador < 4){
  contador++;
  }else {
    contador = 0;
  }
  */
}
