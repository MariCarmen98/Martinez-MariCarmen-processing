Vehiculo myCar1, myCar2, myCar3;

void setup() {
  size(800, 400);
  
  //Vehiculo(color c, float ypos, float tam, float xspeed, int forma)
  
 
  myCar1 = new Vehiculo(color(200, 10, 150), 100, 30, 5, 0);
  myCar2 = new Vehiculo(color(80, 10, 150), 200, 40, 3, 1);
  myCar3 = new Vehiculo(color(200, 200, 150), 300, 50, 8, 2);
}


void draw() {
  background(255);
  
  myCar1.drive();
  myCar2.drive();
  myCar3.drive();
  
  myCar3.volar();
  
  
}

void mousePressed() {
  myCar1.xspeed = random (1, 12);
  myCar2.xspeed = random (1, 12);
  myCar3.xspeed = random (1, 12);
  
  myCar1.tam = random(20,80);
  myCar1.tam = random(20,80);
  myCar1.tam = random(20,80);
  
  myCar1.forma = int(random(3));
}
