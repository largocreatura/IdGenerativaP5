//Práctica 00: Calentando motores
//05
//line()

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

PGraphics pg;

void setup() {
  background(0);
  pg = createGraphics(100, 100);
  frameRate(5);
}

void draw() {
  pg.beginDraw();
  pg.background(0,100);
  pg.stroke(255);
  pg.line(round(random(width)),round(random(height)) , round(random(width)), round(random(width)));
  pg.endDraw();
  image(pg, 0, 0); 
}
