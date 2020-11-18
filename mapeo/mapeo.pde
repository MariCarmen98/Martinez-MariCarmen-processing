float posX, ang, col1, col2;

void setup() {
  size(400, 400);
  noStroke();
  
}

void draw() {
  background(255);
  
  if(mouseX>120 && mouseX<280 && mouseY>220 && mouseY<380) {
    posX = map(mouseX, 120, 280, -65, 465);          //mapear (qué mapeo, primer pto rango, 2 pto del rango, primer pto rango (lugara al que quiero llevar el objeto, 2o pto..)
    ang = map(mouseY, 220, 380, 0, 360);              //que gire segun eje y
    col1 = map(mouseY, 220, 380, 0, 255); 
    col2 = 255 - col1;
    //col2 = map(mouseY, 220, 380, 255,0);          //otra forma de ponerlo
  }
  
  fill(col1, 0, col1);
  rect(120, 220, 160, 160);
  
  pushMatrix();
  translate(posX, 100);
  rotate(radians(ang));
  
  fill(col2, col2, 0);
  rect(-65, -65, 130, 130);
  
  
  popMatrix();
}
