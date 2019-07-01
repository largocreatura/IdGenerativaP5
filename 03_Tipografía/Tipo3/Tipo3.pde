//Práctica 2: Tipografía
//03

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

color BG_COLOR = color(255);
color PGRAPHICS_COLOR = color(0);

int gap = 20;

PGraphics pg;

int colors[] = {#DB7654, #893D60, #D6241E};
int rcol() {
  return colors[int(random(colors.length))];
}

boolean someMode = true;

RShape rshape;

float rf = 1;

void setup() {
  size(1280, 720);
  background(BG_COLOR);
  noStroke();
  rectMode(CENTER);
  PFont f = createFont("Overpass Bold", 300);

  pg = createGraphics(width, height);
  pg.beginDraw();
  pg.textAlign(CENTER, CENTER);
  pg.fill(PGRAPHICS_COLOR);
  pg.textFont(f);
  pg.text("SHAPES", pg.width/2, pg.height/2); 
  pg.endDraw();
  //image(pg,0,0); //Descomenta para ver la tipo de fondo
  noLoop();
}

void draw() {
  if (someMode) {
    //background(BG_COLOR);

    for (int i=0; i<width; i=i+gap) {
      for (int j=0; j < height; j=j+gap) {

        boolean insideText = (pg.get(i, j) == PGRAPHICS_COLOR);

        if (insideText){ 
          fill(rcol());
          rect(i, j, gap, gap); //Pixelado de las letras
          rshape = new RShape(i, j, true);
          float rd = random(rf);
          
          if(rd < 0.1){
          rshape.display();
          }else{
          
          }
        }else{
          fill(BG_COLOR);
        }
        
        
      }
    }
  }
  someMode = false;
}

void mousePressed() {
  background(BG_COLOR);
  someMode = true; 
  redraw();
  rf = map(mouseY,0,height,0,1.2); //En función de la posición del cursor en el eje Y varía la ratio para que haya menos o más formas random.
}
