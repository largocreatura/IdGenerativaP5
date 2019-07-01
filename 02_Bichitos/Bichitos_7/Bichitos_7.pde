//Práctica 2: Bichitos - Space Invaders
//07

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

// Rellenamos el canvas con rectángulos de 10x10 pixels en el eje X e Y
// Utilizando el bucle for(init;check;update){statement}
// Rellenando con colores de una lista[]
// Cada vez que clickamos en el canvas generamos un patrón diferente
// Si pulsamos la tecla "s" lo exporta en png
// Creamos variables para controlar el número de cuadrados en el ancho y alto del bichito.
// Movemos el eje al centro del bichito y lo situamos en el centro de nuestro canvas
// Creamos una clase "Bichito"
// Creamos una matriz de 10x10 bichitos
// Reajuste posición matriz

int maxW = 8;
int maxH = 8;
int gap=4;

int bichitosX = 10; //Variables para la matriz
int bichitosY = 10;

int bichitosGapX; // utilizamos estas variables para hacer un ratio en base al ancho y alto del canvas
int bichitosGapY; // esto es porque no se pueden pasar variables a la función size()

int colors[] = {#DB7654, #893D60, #D6241E, #F2AC2A, #3D71B7, #85749D, #21232E, #5FA25A, #5D8EB4};
int rcol() {
  return colors[int(random(colors.length))];
}

Bichito[] bichitos = new Bichito[bichitosX*bichitosY];//10*10= 100 bichitos nuevos!

void setup() {
  size(800, 800);
  background(255);
  bichitosGapX = width/bichitosX; //800/10=80 >> 80,160,240,320...
  bichitosGapY = height/bichitosY;
  noStroke();
  generate();
}

void draw() {
}

void generate() {
  for (int i=0; i < bichitos.length; i++) { //Itineramos por los 100 elementos del array
    for (int j=bichitosGapX/2; j <= width-bichitosGapX/2; j=j+bichitosGapX) {
      for (int k=bichitosGapY/2; k <= height-bichitosGapY/2; k=k+bichitosGapY) {
        bichitos[i] = new Bichito(j, k); //pasamos los valores a cada bichito
        bichitos[i].display(); //los mostramos
      }
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
