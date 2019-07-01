//Práctica 00: Calentando motores
//03
//noise() + if(){}

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

float x;
float xVel=1;
float ty=2;
float td=3;

void setup() {
  size(300, 300);
  background(#FF0000);
}

void draw() {
  noStroke();
  fill(255);
  
  if(x>width || x<0){ //Definimos los límites para que si toca la pared rebote
    xVel*=-1; //Cambiamos dirección de la ellipse: si toca el borde derecho la velocidad empieza a restarse
  }

  float y = noise(ty);
  float d = noise(td);
  y = map(y, 0, 1, 0, height);
  d = map(d, 0, 1, 2, 10);
  ellipse(x, y, d, d);
  ty+=0.005;
  td+=0.01;
  x=x+xVel;
}
