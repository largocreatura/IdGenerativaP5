//Práctica 2: Bichitos - Space Invaders
//04

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

int maxW = 10;
int maxH = 20;
int gap=20;

int colors[] = {#DB7654, #893D60, #D6241E, #F2AC2A, #3D71B7, #85749D, #21232E, #5FA25A, #5D8EB4};
int rcol() {return colors[int(random(colors.length))];}



void setup() {
  size(800,800);
  background(255);
  noStroke();
  generate();
}

void draw() {}

void generate() {
  pushMatrix(); //Tomamos la píldora roja y entramos en la Matrix XD
  translate(width/2,height/2); //Movemos la coordenada (0,0) al centro del canvas
  int colorR = rcol();
  
  for (int i=0; i<maxW*gap; i=i+gap) {
    for (int j = 0; j<maxH*gap; j=j+gap) {
      int r = round(random(0, 2)); 
      if (r==0) {
        fill(colorR); 
      } else {
        fill(255);
      }
      
      /*Para situar ambos ejes, xy, en el centro del bicho, 
      en el eje x los valores del centro a la izquierda serán negativos
      y en el eje y los valores del centro para arriba serán tmb negativos*/
      
      rect(-maxW*gap/2+i,-maxH*gap/2+j, gap, gap);
      rect(maxW*gap/2-i-gap, -maxH*gap/2+j, gap, gap);
    }
  }
  popMatrix(); //al cerrar la Matrix, la coordenada (0,0) vuelve a su posición por defecto, sin afectar a lo que ya ha dibujado.
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
