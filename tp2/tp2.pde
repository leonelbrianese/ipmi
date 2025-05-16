//Leonel Brianese 93490/3 Comision 3 tp2
float contador;
PImage foto1;
PImage foto2;
PImage foto3;
PImage boton;
int posX;
int posX2;
int posY;
int posX3;
int posY2;
int posY3;
PFont fuente;

void setup () {
  size( 640, 480);
  foto1= loadImage("foto1.jpg");
  foto2= loadImage("foto2.jpg");
  foto3= loadImage("foto4.jpg");
  boton= loadImage("boton.jpg");
  fuente = loadFont("Corbel-BoldItalic-30.vlw");
  textFont(fuente, 35);
  textAlign(CENTER, CENTER);
  posX  = 920;
  posX2 = 640;
  posY  = 500;
  posX3 = 10;
  posY2 = 480;
  posY3 = 0;
}

void draw() {

  contador = contador + 1;

  //primer pantalla
  if (contador < 500) {
    image(foto1, 0, 0, 640, 480);
    fill(250);
    textSize(30);
    text("Electronic Superhighway es una obra creadad por Nam June Paik en 1995", posX, height/1.20);
    posX = posX - 3;
  }
  //segunda pantalla
  else if (contador > 600 && contador < 1070) {
    image(foto2, 0, 0, 640, 480);
    fill(0,230,0);
    textSize(23);
    text("La obra trata la influencia de los medios electrónicos en la sociedad moderna, \n explorando cómo transforma la interacción humana", posX3, posY2);
    posY2 = posY2-1;
    posX3 = posX3+1;
  }
  //tercer pantalla
  else if (contador > 1070 && contador < 1490) {
    image(foto3, 0, 0, 640, 480);
    fill(0);
    textSize(18);
    text("Actualmente la obra se encuentra \n en el Museo de Arte Americano Smithsonian en Washington ", width/2, posY);
    posY = posY - 1;
  }
  //cuarta pantalla reinicio
  else if (contador > 1490 && contador < 1800) {
  
    image(boton, 0, 0, 640, 480);
  }
}
void mousePressed() {
   if (contador > 1490 && contador < 1800) {
  if (mouseX >= 102 && mouseX <= 532 && mouseY >= 140 && mouseY <= 340) {
    posX  = 920;
    posX2 = 640;
    posX3 = 10;
    posY  = 500;
    posY2 = 480;
    posY3 = 0;
    contador = +1;
  }
}
}
