//Práctica 2: Bichitos - Space Invaders
//03

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

// Rellenamos el canvas con rectángulos de 10x10 pixels en el eje X e Y
// Utilizando el bucle for(init;check;update){statement}
// Rellenando con colores de una lista[]
// Cada vez que clickamos en el canvas generamos un patrón diferente
// Si pulsamos la tecla "s" lo exporta en png
// Creamos variables para controlar el número de cuadrados en el ancho y alto del bichito.

int maxW = 8; //Máximo de cuadrados en el ancho //Numero par: simetria ocupando eje, Numero impar: simetria sin ocupar eje
int maxH = 10;

int gap=10;

int colors[] = {#DB7654, #893D60, #D6241E, #F2AC2A, #3D71B7, #85749D, #21232E, #5FA25A, #5D8EB4};
int rcol() {return colors[int(random(colors.length))];}

void setup() {
  noStroke();
  generate();
}

void draw() {}

void generate() {
  
  int colorR = rcol();
  
  for (int i=0; i<maxW*gap; i=i+gap) {
    for (int j = 0; j<maxH*gap; j=j+gap) {
      int r = round(random(0, 2)); 
      if (r==0) {
        fill(colorR); 
      } else {
        fill(255);
      }
      rect(i, j, gap, gap);
      rect(maxW*gap-i-gap, j, gap, gap); //Cambiamos aquí width por maxW*gap (ancho total del bichito)
    }
  }
}

void mouseClicked() {
  generate();
}

void keyPressed() {
  if (key == 's') saveImage();
}

void saveImage() {
  String name = nf(day(), 2)+nf(hour(), 2)+nf(minute(), 2)+nf(second(), 2);
  saveFrame(name+".png");
}
