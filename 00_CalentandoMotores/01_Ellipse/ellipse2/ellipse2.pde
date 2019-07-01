//Práctica 00: Calentando motores
//02
//ellipse()

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

int d;

void setup() {
  size(300,300);
}

void draw() {
  //background(255);
  //stroke(int(random(255)),int(random(255)),int(random(255)));
  d = int(random(50));
  ellipse(mouseX, mouseY, d,d);
}
