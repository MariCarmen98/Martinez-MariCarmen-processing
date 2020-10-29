PImage foto;

void setup() {
  size(400, 400);
  
  foto = loadImage("canales.jpg");
}

void draw () {
  background(225);
  
  image(foto,50,50);                 //foto
  
  fill(255);                         //rectangulo 1
  noStroke();  
  rect(50, 0, 300, 50);  
  
  fill(255);                         //rectangulo 2
  noStroke();  
  rect(50, 350, 300, 400);  
  
  fill(255);                         //rectangulo 3
  noStroke();  
  rect(0, 50, 50, 300);  
  
  fill(255);                         //rectangulo 4
  noStroke();  
  rect(350, 50, 50, 300);  
  
  
  noStroke();                   
  fill(255, 233, 0, 100);             //circulo amarillo            
  ellipse(200,200,100,100);
  
  noFill();                         //circulo rojo
  strokeWeight(2);
  stroke(255, 0, 0);  
  ellipse(50,200,100,100); 
  
  noFill();                         //circulo rojo 2
  strokeWeight(2);
  stroke(255, 0, 0);  
  ellipse(350,200,100,100); 
  
   beginShape();                    //triángulo
  vertex(100,0);
  vertex(300,0);
  vertex(200, 150);

  endShape(CLOSE);
  
   beginShape();                    //triángulo 2
  vertex(100,400);
  vertex(300,400);
  vertex(200, 250);

  endShape(CLOSE);
  
  noFill();                         //circulo negro
  stroke(0);  
  ellipse(50,200,50,50); 
  
  noFill();                         //circulo negro 2
  stroke(0);  
  ellipse(350,200,50,50); 
  
  fill(255);                         //circulo blanco
  stroke(0);  
  ellipse(100,200,100,50); 
  
  fill(255);                         //circulo blanco
  stroke(0);  
  ellipse(300,200,100,50); 
  
    beginShape();                    //forma irregular
    noStroke ();
  vertex(184,174);
  vertex(244,187);
  vertex(244,190);
  vertex(199, 209);
  vertex(190, 235);
  
  vertex(182, 235);
  vertex(188, 209);
  vertex(230,190);
  vertex(184,184);
  
  endShape(CLOSE);
  
  

}



void mousePressed() {
  println(mouseX + ", " + mouseY); 
}
