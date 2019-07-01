class RShape {
  //Posición de la forma
  int x; 
  int y;
  boolean inside;

  RShape(int tempX, int tempY, boolean insideTemp) {
    x = tempX;
    y = tempY;
    inside = insideTemp;
  }

  void display() {
      int randomShape = int(random(4)); 
      switch (randomShape) {
      case 0:
        fill(BG_COLOR);
        rect(x, y, gap, gap);

        if (inside) 
          fill(rcol());
        else
          fill(BG_COLOR);
        ellipse(x, y, gap*0.8, gap*0.8);
        break;
      case 1:
        fill(BG_COLOR);
        rect(x, y, gap, gap);
        if (inside) 
          fill(rcol());
        else
          fill(BG_COLOR);
        pushMatrix();
        translate(x, y);
        rotate(QUARTER_PI);
        rect(0, 0, gap*0.5, gap*0.5);
        popMatrix();
        break;
      case 2:
        fill(BG_COLOR);
        rect(x, y, gap, gap);
        if (inside) 
          fill(rcol());
        else
          fill(BG_COLOR);
        rect(x, y, gap*0.5, gap*0.5);
        break;
      case 3:
        fill(BG_COLOR);
        rect(x, y, gap, gap);
        if (inside) 
          fill(rcol());
        else
          fill(BG_COLOR);
        rect(x, y, gap*0.5, gap*0.15);
        rect(x, y, gap*0.15, gap*0.5);
        break;
      }
  }
}
