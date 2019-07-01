//Práctica 00: Calentando motores
//04
//line()

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

void setup() {
  background(0);
  //frameRate(5);
}

void draw() {
  background(0);
  stroke(255);
  line(round(random(width)), round(random(height)), round(random(width)), round(random(width)));
}
