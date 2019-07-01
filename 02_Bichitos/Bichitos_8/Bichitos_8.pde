//Práctica 2: Bichitos - Space Invaders
//08

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

// Ampliando sistema visual

int maxW;
int maxH;

int gap;

int colors[] = {#DB7654, #893D60, #D6241E, #F2AC2A, #3D71B7, #85749D, #21232E, #5FA25A, #5D8EB4};
int rcol() {
  return colors[int(random(colors.length))];
}

Bichito bichitos;



void setup() {
  size(800, 800);
  background(255);
  noStroke();
  generate();
}

void draw() {
  if (frameCount%10 == 0) //Cada 40 frames ejecutamos generate()
  generate();
}

void generate() {
  maxW = int(random(2,10));
  maxH = int(random(2,10));
  gap = int(random(2,20));
  bichitos = new Bichito(int(random(width)), int(random(height))); //pasamos los valores a cada bichito
  bichitos.display(); //los mostramos
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
