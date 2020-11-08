/*Los rectángulos miden 80 x 80 y están en las
coordenadas siguientes: (20,20), (300,20), (20,300) y (300,300)*/

PFont font;
int fondo; // Variable del color del fondo
String a;

void setup(){
  
size(400,400);
fondo=255;
font = loadFont("Monospaced-48.vlw");
//textFont(font,  30);

a= "Buenos días";
textSize(60);
noStroke();

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
  
  } else if (mouseX>300 && mouseX<380 && mouseY>20 && mouseY<100) {   //circulo rojo
    noStroke();                   
    fill(255, 0, 0);                        
    ellipse(200,200,200,200);
  
  }  else if (mouseX>300 && mouseX<380 && mouseY>300 && mouseY<380) {   //cuadrado verde
    noStroke();                   
    fill(0, 255, 0);                        
    rect(100, 100, 200, 200); 
  
  }else if (mouseX>20 && mouseX<100 && mouseY>300 && mouseY<380) {   // texto
    a= "Buenos días";
  fill(0);
  text (a, 20, height/2);   //coords del punto inferior izquierdo, donde empiezo a escribir
  
}else {
    fondo = 255;
    
  }

}
