//VARIABLES

/* COMENTARIOS
tipo variable = valor;
*/

String texto = "Hola, buenas tardes";
//println(texto);   //sirve para ve el valor de las variables 

int numero =  42;
boolean booleana = true;

/* 
int  numeros enteros
float   numeros decimales
boolean (true o false)
string  (para texto)
PImage  (imágenes)
PFont   (guardar fuentes)
char    (guardar caracteres)
color
*/

// CONVERSIÓN DE TIPOS

int entero = 4;
float decimal = 2.45;
int entero2 = int(34.09);
//println(entero2);   //me lo va a redondear a la baja
float decimal2 = 22;

// POST INCREMENTO
int resultado = 2;

resultado += 4;      //que la variable resultado va a incrementar 4

resultado += 1; 

resultado++;      //es lo  mismo que incrementar de uno en uno

//println(resultado);

//ALEATORIEDAD

float azarDecimales = random(6);    //numero al azar con decimales
//println(azarDecimales);
int azarEnteros = int(random(6));     //numero al azar con enteros
//println(azarEnteros);
int rangoAzar = int(random(-4,12));    //numero al azar entre esos numeros
//println(rangoAzar);                   //imprime y salta la linea
//print("Hola");                        //imprime pero sin saltar la linea, lo escribe junto


//CALCULAR
int a = 5 + 3;
int b = 5 - 3;
int c = 5 * 3;
int d = 5 / 3;                   //división
int e = 5 % 3;                  //me saca el resto de la operación
float f = 5.0/3.0;

//println(d);
//println(f);
//println(e);
//println(f %  2);   //MUY UTIL, EJEMPLO FONDO

//ARRAYS  (listas de cosas)

int [] listaNumeros = {1, 42, 5, 0, -23};      //tipo de cosa que guardo-lista- nombre que le pongo- cosas de la lista
String [] listaNombres  = {"Pepe", "Ana", "Juan", "Luis"};
//println(listaNumeros.length);        //para saber el numero de elementos que hay en una lista
//los elementos de las listas tienen posiciones, y en la mayoria de ellas el primer elemento es el 0

//println(listaNombres[2]);     //imprimeme el elemento en la posición x

//OPERADORES DE COMPARACIÓN

/*
solo un = quere decir que a la variable x le meto algo. guardar cosas
igualdad ==    es esto igual a esto?
diferencia !=    es algo diferente a lo otro?
mayor >
menor <
menor o igual <=
mayor o igual >=
*/

//boolean booleana = true;
//boolean booleana = false;
boolean booleana1 = 70 <= 70; //podemos guardarlo también porque la solución es un verdadero o un falso
boolean booleana2 = 7 != 7;

//println(booleana2);

// ÁNGULOS

float anguloEnGrados  = radians(180);   //cuántos radianes son x grados. podemos pensar en grados y el programa lo transforma con esta 
//println(anguloEnGrados);

// CONTROL DE FLUJO  -  CONDICIONALES


/*
if () {
  
 } else {
   
 }
 escribirlas así para no olvidarnos las llaves  y eso
 
 if (condició) {
  haz esto
 } else { haz lo otro
   
 }
 */
 boolean bool =  5 < 2;
 if ( bool == true) {
  //println("La condición es verdadera");
 } else {
   //println("La condición es falsa");
 }
 
 /*int precio = 9;
 if (precio < 8) {
  println("Es barato");
 } else if (precio >= 8 && precio <= 10) {
   println("No está  mal");
 } else {
   println("Es caro");
 }
 */
 
 // OPERADORES LÓGICOS
 
 //AND &&
 
 //OR  ||                         (teclas opcion y  1)
 if ( 3 + 9 == 12 || 5 < 2 ) {
   
 }
 
 // BUCLE FOR
 
 for (int i = 0; i < listaNombres.length; i++) {             //este ejemplo sirve par recorrer listas
   println(listaNombres[i]);                                 // 3 partes: variable donde se inicializa, hasta donde llega, como se incrementa
  }
