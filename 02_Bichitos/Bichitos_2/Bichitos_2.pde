//Práctica 2: Bichitos - Space Invaders
//02

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

//rellenamos el canvas con rectángulos de 10x10 pixels en el eje X e Y
//Utilizando el bucle for(init;check;update){statement}
//Rellenando de color aleatorio
//Cada vez que clickamos en el canvas generamos un patrón diferente

int gap=10;

int c1;
int c2;
int c3;


void setup() {
  noStroke(); //Sin trazos
  generate();
}

void draw() {
} //Necesitamos el draw para que funcione el evento de "void mouseClicked(){}"

void generate() {
  
  c1 = int(random(255));
  c2 = int(random(255));
  c3 = int(random(255));
  color rc = color(c1, c2, c3); //Variable de tipo color
  
  for (int i=0; i<width/2; i=i+gap) {
    for (int j = 0; j<height; j=j+gap) {
      int r = round(random(0, 2)); 
      if (r==0) {
        fill(rc); //Color Aleatorio
      } else {
        fill(255); //Blanco
      }
      rect(i, j, gap, gap);
      rect(width-i-gap, j, gap, gap);
    }
  }
}

void mouseClicked() {
  generate();
}
