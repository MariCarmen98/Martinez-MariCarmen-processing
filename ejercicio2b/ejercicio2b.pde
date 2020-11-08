PFont font;
int fondo, b, incre; 
String a;
float angulo;
float xMove;


void setup(){
  
  size(400,400);
  fondo=255;

  font = loadFont("Monospaced-48.vlw");
  a= "Buenos días";
  textSize(40);
  noStroke();

  angulo = 0;

  //b = 100;   //le doy un valor incial
  incre = 3;

  xMove = 0;
}

void draw(){
 background(fondo);

 noStroke();
 fill(255, 255, 0);
 rect(20, 20, 80, 80);
 rect(300, 20, 80, 80);  
 rect(20, 300, 80, 80);
 rect(300, 300, 80, 80); 
 
  if (mouseX>20 && mouseX<100 && mouseY>20 && mouseY<100){          //fondo negro 
    fondo = 0;    
  
  } else if (mouseX>300 && mouseX<380 && mouseY>20 && mouseY<100) {   //circulo rojo decrece
    noStroke();                   
    fill(255, 0, 0);                        
    ellipse(200,200,b,b);
    if (b < 0) {
    b = 200;
  }
  
  b += -incre; 
  
  }  else if (mouseX>300 && mouseX<380 && mouseY>300 && mouseY<380) {   //cuadrado verde gira dcha
    noStroke();                   
                            
    //rect(100, 100, 200, 200); 
   
    pushMatrix();
    translate(200, 200);
    rotate(angulo);  
   
    fill(0, 255, 0);
    //fill(255); 
    rect(-100, -100, 200, 200);  
    popMatrix();
    angulo += 0.02;  
  
  }else if (mouseX>20 && mouseX<100 && mouseY>300 && mouseY<380) {   // texto
    a= "Hola";
  fill(0);
  text (a, xMove, height/2);  
  
  xMove += 4;
  if (xMove > width-100) {
    xMove = 0;
  }
}else {
    fondo = 255;
    
  }

}
