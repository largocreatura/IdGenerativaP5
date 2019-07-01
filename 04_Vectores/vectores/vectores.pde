//Práctica 3: Vectores
//01

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

int numPoints = 20;
PVector[] points = new PVector[20];

int colors[] = {#DB7654, #893D60, #D6241E, #F2AC2A, #3D71B7, #FFEEED, #85749D, #21232E, #5FA25A, #5D8EB4};
int rcol() {
  return colors[int(random(colors.length))];
}

int xp, yp;
boolean has_run = true;

void setup() {
  size(300, 300);
  textSize(40);
}


void draw() {
  if (has_run) {
    background(255);
    int ColorR = rcol();
    for (int i = 0; i < numPoints; i++) {
      points[i] = new PVector( random(50,width-50), random(50,height-50) );
      stroke(ColorR,200);
      strokeWeight(3.5);
      line(points[0].x, points[0].y, points[i].x, points[i].y);
      
    }
    
    for (int i = 0; i < numPoints; i++) { //Doble for para que los puntos negros queden por encima
      fill(0);
      noStroke();
      ellipse(points[i].x, points[i].y, 6, 6);
    }
    has_run = false;
  }
}

void mouseClicked() {
  background(255);
  has_run = true;
  redraw();
}
