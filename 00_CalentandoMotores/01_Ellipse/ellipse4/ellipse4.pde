//Práctica 00: Calentando motores
//04
//ellipse()

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

int d;

void setup() {
  size(300, 300);
}

void draw() {
  noStroke();
  int rcolor = round(random(3));
  switch(rcolor) {
  case 0:
    fill(#F2C407);
    break;
  case 1:
    fill(#076FF2);
    break;
  case 2:
    fill(255);
    break;
  }
  d = int(random(50));
  ellipse(mouseX, mouseY, d, d);
}
