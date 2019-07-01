//Práctica 00: Calentando motores
//01
//random()

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

void setup() {
 size(300, 300);
}

void draw() {
 background(255);
 float x = random(width);
 ellipse(x, height/2, 50, 50);
}
