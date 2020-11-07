
class Vehiculo {
 
  color c;
  float xspeed;
  float xpos = 0;
  float ypos;
  float tam;
  int forma;
  
  Vehiculo(color c,float ypos,float tam,float xspeed,int forma){
    this.c = c;
    this.ypos = ypos;
    this.tam = tam;
    this.xspeed =xspeed;
    this.forma = forma;
  }
  
  void drive() {
   xpos += xspeed;
   
   if (xpos> width) {     //width me guarda el ancho de la ventana, asi no tengo que saber cuanto mide
 xpos=0;  
 
 } 
 noStroke();
 fill(c);
 
 if (forma ==0) {
   rect(xpos, ypos, tam, tam);
 }else if (forma ==1) {
   ellipse(xpos, ypos, tam, tam);
 }else if (forma ==2) {
   triangle(xpos, ypos, xpos + tam, ypos, xpos + tam/2, ypos-tam/2);
 }
} 

void volar() {
  if (mouseX>width/2) {
 ypos --;
 }
  }
}
