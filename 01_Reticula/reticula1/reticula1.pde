//Práctica 1: Retícula

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

PGraphics pg;
int gap = 40;
int str = 4;
int d = gap*2-str;
void setup() {
  //size(400, 400);
  fullScreen();
  background(255);
  imageMode(CENTER);
  smooth();
  pg = createGraphics(gap, gap); //Generamos un PGraphics del arco que utilizaremos
  pg.beginDraw();
  pg.noFill();
  pg.stroke(0, 0, 255);
  pg.strokeWeight(str);
  pg.arc(0, 0, d, d, 0, HALF_PI);
  pg.endDraw();

  generate();
}

void draw() {
}

void generate() {
  translate(20, 20);
  for (int i=0; i < width-20; i=i+gap) {
    for (int j=0; j < height-20; j=j+gap) {
      int Rangle = int(random(4));
      pushMatrix();
      translate(i, j);
      rotate(radians(Rangle*90)); //Lo rotamos por un random de 0,90,180 ò 270 grados
      image(pg, 0, 0);
      popMatrix();
    }
  }
}

void mousePressed() {
  background(255);
  generate();
}

void keyPressed() {
  if (key == 's') saveImage();
}

void saveImage() {
  String name = nf(day(), 2)+nf(hour(), 2)+nf(minute(), 2)+nf(second(), 2);
  saveFrame(name+".png");
}
