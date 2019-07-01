//Práctica 2: Bichitos - Space Invaders
//01

//Taller "Identidad generativa con Processing"
//Imparte: Julián Pérez - info@julian-perez.com  
//Escuela de verano 2019 - Escuela de diseño Arte Diez - Madrid


//rellenamos el canvas con rectángulos de 10x10 pixels en el eje X e Y
//Utilizando el bucle for(init;check;update){statement}
//Rellenando aleatoriamente cada rectángulo de blanco o negro //fill(255) o fill(0)

int gap=10;

noStroke();

for (int i=0; i<width/2; i=i+gap) {
  for (int j = 0; j<height; j=j+gap) {
    int r = round(random(0, 2)); //Redondea valores aleatorios decimales entre el 0 y el 2. Por ej.: 1,345 >redondeo> 1
    // Esto nos sirve para tener en cada iteración un 1 o un 0. Blanco o Negro
    if (r==0) {
      fill(0); //Negro
    } else {
      fill(255); //Blanco
    }
    rect(i, j, gap, gap);
    rect(width-i-gap, j, gap, gap); //Parte espejada. Añadimos el -gap para corregir la coordenada del rect que empieza en la esquina sup. izq.
  }
}
