PImage img;
int flip = 1;
float desplazamientoEnX = 0;
void setup() {
  size(640, 360);
  img = loadImage("moonwalk.jpg");
}

void draw() {
  background(0);
  push();
  translate(desplazamientoEnX, 0 );
  scale( flip, 1 );
  image(img, 0, 0);
  pop();
}

void mouseClicked() {
  flip = flip*-1;

  if (flip == 1) {
    desplazamientoEnX = 0;
  } else {
    /*
      Importante dato de img.width, 
     accedemos a la propiedad del ancho de la imagen
     ahora sabiendo que img es un objeto de la clase
     PImagen
    */
    desplazamientoEnX = img.width;
  }
}
