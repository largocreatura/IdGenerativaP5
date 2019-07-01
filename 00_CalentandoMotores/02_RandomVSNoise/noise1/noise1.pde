//Práctica 00: Calentando motores
//01
//noise()

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

float t=0;

void setup() {
 size(300, 300);
}

void draw() {
 noStroke();
 background(255);
 fill(0);
 float x = noise(t);
 x = map(x, 0, 1, 0, width);
 ellipse(x, height/2, 50, 50);
 t+=0.01;
}
