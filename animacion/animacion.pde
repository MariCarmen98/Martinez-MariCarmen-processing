int posH, sentido;
PImage[] fotos;
String dibujo;

//int[] numeros = {2, 4, 5};

void setup () {
  size(400, 400);
  sentido = 14;
  frameRate(10);                 //velocidad de la animación  24 es lo normal en als pelis 
  
  fotos = new PImage[15];
  
  for(int i = 0; i<15 ; i++){      //for 3 cosas que meter, de donde empiezo, donde acabo y de cuanto es el salto
    
    dibujo = "tipejo" + nf(i, 2) + ".jpg";        //nf(i ,2) donde 2 es el numero de digitos
    fotos[i] = loadImage(dibujo);
    //fotos[14-i] = loadImage(dibujo);
  }
  posH = 0;
  
}
void draw () {
  background(255); 
 // posH += 8;
 // image(fotos[frameCount % 15], posH, 0, 130, 100);  //PARA QUE SE MUEVA TAMBIEN
  
  if (sentido == 0) {
  image(fotos[frameCount % 15], 0, 0);
  }else {
  image(fotos[14 - frameCount % 15], 0, 0);
  }

  
 // println(frameCount);        //esta variable es para sacar los fotogramas
}


void mousePressed() {
  if (sentido == 0){ 
    sentido = 1;
  }else {
    sentido = 0;
  }
}
