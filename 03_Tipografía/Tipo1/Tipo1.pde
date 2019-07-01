//Práctica 2: Tipografía
//01

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

color BG_COLOR = color(255);
color PGRAPHICS_COLOR = color(0);
int drawMode = 0;

int gap = 20;

PGraphics pg;

int colors[] = {#DB7654, #893D60, #D6241E};
int rcol() {
  return colors[int(random(colors.length))];
}

void setup() {
  size(1280, 720);
  background(BG_COLOR);
  //noStroke(); //Descomenta para quitar trazo a las formas
  rectMode(CENTER);
  PFont f = createFont("Arial", 300);

  pg = createGraphics(width, height);
  pg.beginDraw();
  pg.textAlign(CENTER, CENTER);
  pg.fill(PGRAPHICS_COLOR);
  pg.textFont(f);
  pg.text("SHAPES", pg.width/2, pg.height/2); 
  pg.endDraw();
  //image(pg,0,0); //Descomenta para ver la tipo de fondo
  generate();
}

void draw() {
}

void generate() {
  for (int i=0; i<width; i=i+gap) {
    for (int j=0; j < height; j=j+gap) {
      line(i, 0, i, height); //Líneas guía retícula
      line(0, j, width, j);
      
      boolean insideText = (pg.get(i, j) == PGRAPHICS_COLOR);
      if (insideText) {
        fill(rcol());
      }else{
        //fill(BG_COLOR); //Descomenta y comenta siguiente línea para no ver las formas del fondo
        fill(rcol(), 25); 
      }
      
      int randomShape = int(random(5));
      switch (randomShape) {
      case 0:
        rect(i, j, gap, gap);
        break;
      case 1:
        ellipse(i, j, gap*0.8, gap*0.8);
        break;
      case 2:
        pushMatrix();
        translate(i, j);
        rotate(QUARTER_PI);
        rect(0, 0, gap*0.5, gap*0.5);
        popMatrix();
        break;
      case 3:
        rect(i, j, gap*0.5, gap*0.5);
        break;
      case 4:
        rect(i, j, gap*0.5, gap*0.15);
        rect(i, j, gap*0.15, gap*0.5);
        break;
      case 5:
        pushMatrix();
        translate(i, j);
        for (int k = 0; k < 4; k ++) {
          for (int l = 0; l < 4; l ++) {
            if ((k + l + 1) % 2 == 0) {
              fill(255, 255, 255); 
            } else {
              fill(0, 0, 0);
            }
            rect(k * gap/4, l * gap/4, (k + 1) * gap/4, (l + 1) * gap/4);
          }
        }
        popMatrix();
        break;
      }
    }
  }
}

void mousePressed() {
  background(BG_COLOR);
  generate();
}
