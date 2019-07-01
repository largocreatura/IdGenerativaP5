//Práctica 00: Calentando motores
//01
//for(){}

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid


//Situamos 5 rectángulos espaciados igualmente y en la mitad de la altura del canvas


int x = 5;
int gap = 20;

int y = height/2-5;

line(width/2,0,width/2,height);
line(0,height/2,width,height/2);

rect(x,y,10,10);
rect(x+gap,y,10,10);
rect(x+gap*2,y,10,10);
rect(x+gap*3,y,10,10);
rect(x+gap*4,y,10,10);
