class Bichito {
  //Posición del bichito
  int x; 
  int y; 

  Bichito(int tempX, int tempY) { //Función para pasar los valores que entran a variables que podamos utilizar dentro del objeto tempX >> x
    x = tempX;
    y = tempY;
  }

  void display() {
    pushMatrix();
    translate(x, y);
    int colorR = rcol();

    for (int i=0; i<maxW*gap; i=i+gap) {
      for (int j = 0; j<maxH*gap; j=j+gap) {
        int r = int(random(0, 2)); 
        if (r==0) {

          fill(colorR);

        } else {

          noFill();


        }
        
        rect(-maxW*gap/2+i, -maxH*gap/2+j, gap, gap);
        rect(maxW*gap/2-i-gap, -maxH*gap/2+j, gap, gap);
      }
    }
    
    popMatrix();
  }
}
