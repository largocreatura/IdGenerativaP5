//Recomendado: Inkscape
//1. Colocar forma sin relleno, trazo negro, en la parte superior izquierda de la hoja.
//2. Edición >> "Ajustar página a la selección"
//3. Guardar como SVG plano.
//Probado en Ubuntu 18.10, Inkscape 0.92
//https://inkscape.org/release/

PShape dibujo;
int gap = 100;

void setup() {
  size(800, 800);
  background(255);
  dibujo = loadShape("dibujo.svg");
  dibujo.disableStyle(); //Si quieres añadir atributos como trazo, relleno, etc. primero utiliza esta función para deshabilitar el estilo que traiga el SVG
  shapeMode(CENTER);
  strokeWeight(2);
  stroke(color(255));
  fill(#1B35DB);
} 

void draw() {
  for (int i=gap/2; i < width; i=i+gap) {
    for (int j=gap/2; j < width; j=j+gap) {
      shape(dibujo, i, j, 80, 80);
    }
  }
}
