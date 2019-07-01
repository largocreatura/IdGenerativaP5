//Práctica 00: Calentando motores
//01
//random()

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

void setup() {
 size(300, 300);
 background(125);
}

void draw() {
 frameRate(360);
 noStroke();
 float x = random(width);
 float y = random(height);
 fill(90);
 ellipse(x, y, 8, 8);
}
