//Práctica 00: Calentando motores
//02
//noise()

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

float tx=1;
float ty=2;
float td=3;

void setup() {
  size(300, 300);
  background(#FF0000);
}

void draw() {
  noStroke();
  fill(255,25);
  float x = noise(tx);
  float y = noise(ty);
  float d = noise(td);
  x = map(x, 0, 1, 0, width);
  y = map(y, 0, 1, 0, height);
  d = map(d, 0, 1, 2, 20);
  ellipse(x, y, d, d);
  tx+=0.005;
  ty+=0.005;
  td+=0.01;
}
