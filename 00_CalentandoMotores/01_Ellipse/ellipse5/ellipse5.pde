//Práctica 00: Calentando motores
//05
//ellipse()

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

int d;
int colors[] = {#DB7654, #893D60, #D6241E, #F2AC2A, #3D71B7, #85749D, #21232E, #5FA25A, #5D8EB4};

void setup() {
  size(300, 300);
}

void draw() {
  noStroke();
  int i = round(random(8));
  fill(colors[i]);
  
  d = int(random(50));
  ellipse(mouseX, mouseY, d, d);
}
