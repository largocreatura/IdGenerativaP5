//Práctica 00: Calentando motores
//06
//line()

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid

PGraphics pg;
float tx1=1;
float ty1=2;
float tx2=3;
float ty2=4;

void setup() {
  //size(300,300);
  background(0);
  pg = createGraphics(width, height);
}

void draw() {
  float x1 = noise(tx1);
  float y1 = noise(ty1);
  float x2 = noise(tx2);
  float y2 = noise(ty2);
  x1 = map(x1, 0, 1, 0, width);
  y1 = map(y1, 0, 1, 0, height);
  x2 = map(x2, 0, 1, 0, width);
  y2 = map(y2, 0, 1, 0, height);
  
  pg.beginDraw();
  pg.background(0,10);
  pg.stroke(255);
  pg.line(x1,y1,x2,y2);
  pg.endDraw();
  image(pg, 0, 0); 
  tx1+=0.01;
  ty1+=0.01;
  tx2+=0.01;
  ty2+=0.01;
}
