//https://youtu.be/OwLCE5OymKM?si=3JL84qpv6FdjCD_5
//Leonel Brianese 93490/3 comision 3
PImage foto;
float colormouse = 0;
float cuadrado = 0;
int tamaño = 20;
int velocidad = 1 ;
int mas = 6  ;

void setup() {
  size(800, 400);
  foto = loadImage("programacion.jpg");
}

void draw() {
  image(foto, 0, 0);

  // bordes y centrar cuadrados
  strokeWeight(10);
  rectMode(CENTER);

  // for principal
  for (int i = 0; i < 4; i++) {
    push();
    if (i == 1) {
      translate(700, 100);
    } else if (i == 2) {
      translate(500, 300);
    } else if (i == 3) {
      translate(700, 300);
    } else {
      translate(500, 100);
    }


    //cuadrados
    for (int l = 190; l > 0; l -= tamaño) {

      // color
      float f = dist(0, 0, l, l);
      cuadrado = map(f, 0, 190, 235, 50 ); //oscurecer los cuadrados, borde cer, borde lej, color +, color -

      //funcion mouse color
      colormouse=map(mouseY, 0, height, 0, 255);
      if (clickizquierdo()) {
        cuadrado-=colormouse;
      }
      Color(i, int(cuadrado));
      rect(0, 0, l, l);
    }
    pop();
  }
}
void keyPressed() {
  if (keyCode == 'W') {
    //mas cuadrados
    if (tamaño>1) {
      tamaño-=1;
    }
    if (tamaño>15) {
      tamaño-=velocidad;
    }
  }

  //menos cuadrados
  if (keyCode == 'S') {
    tamaño+=velocidad;
  }
  //aumentar velocidad
  if (tamaño==10) {
    velocidad+=mas;
  }

  //reiniciar
  if (key == 'r' || key == 'R') {
    tamaño=20;
  }
}
