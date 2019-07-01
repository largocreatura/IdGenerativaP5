//Práctica 2: Tipografía
//04

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

color BG_COLOR = color(255);
color PGRAPHICS_COLOR = color(0);
int drawMode = 0;

int gap = 16;

PGraphics pg;


int colors[] = {#DB7654, #893D60, #D6241E};
int rcol() {
  return colors[int(random(colors.length))];
}

void setup() {
  size(900, 900);
  background(BG_COLOR);
  noStroke();
  rectMode(CENTER);
  PImage img = loadImage("aqui_el_nombre_de_tu_imagen.jpg");
  
  pg = createGraphics(width, height);
  pg.beginDraw();
  pg.image(img,0,0);
  pg.filter(THRESHOLD);
  pg.endDraw();
  //image(img,0,0); //Descomenta para ver la imagne de fondo
  generate();
}

void draw() {
}

void generate() {
  for (int i=0; i<width; i=i+gap) {
    for (int j=0; j < height; j=j+gap) {
      line(i, 0, i, height);
      line(0, j, width, j);
      boolean insideText = (pg.get(i, j) == PGRAPHICS_COLOR);
      if (insideText) 
        fill(rcol());
      else
        fill(BG_COLOR); //sin formas de fondo
        //fill(rcol(), 25); 

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
      //case 5:
      //  pushMatrix();
      //  translate(i, j);
      //  rect(0,0,gap,gap/8);
      //  rect(0,-gap/4,gap,gap/10);
      //  rect(0,gap/4,gap,gap/10);
      //  rect(0,-gap/2,gap,gap/10);
      //  rect(0,gap/2,gap,gap/10);
      //  //rect();
      //  popMatrix();
      //  break;
      }
    }
  }
}

void mousePressed() {
  background(BG_COLOR); // clear the screen when changing drawing mode
  generate();
}
