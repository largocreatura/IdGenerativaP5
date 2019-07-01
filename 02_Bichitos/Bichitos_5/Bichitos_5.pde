//Práctica 2: Bichitos - Space Invaders
//05

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

int maxW = 10;
int maxH = 20;
int gap=20;

int colors[] = {#DB7654, #893D60, #D6241E, #F2AC2A, #3D71B7, #85749D, #21232E, #5FA25A, #5D8EB4};
int rcol() {return colors[int(random(colors.length))];}

Bichito bichito; //Inicializamos la clase Bichito

void setup() {
  size(800,800);
  background(255);
  noStroke();
  generate();
}

void draw() {}

void generate() {
  bichito = new Bichito(width/2,height/2); //nuevo bichito, pasamos la posición del bichito, en este caso el centro del canvas
  bichito.display(); //lo mostramos en el canvas
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
