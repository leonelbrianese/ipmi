//TP1 Leonel Brianese 93490/3 Comision 3
PImage image;

  size(800, 400);
  image = loadImage("foto.jpg");

  background(14, 49, 26);

  noStroke();

  image(image, 0, 0, 400, 400);


  fill(119, 95, 63);
  rect(566, 275, 105, 200 ); //cuello


  fill(126, 92, 47);
  ellipse(620, 200, 200, 180); //cara


  fill(94,56,30);
  triangle(621, 193, 601, 230, 640, 230); //nariz


  fill(55, 33, 4);
  rect(525, 150, 190, -45); //pelo


  fill (35);
  rect(550, 153, 50, 5); //ceja izq
  rect(640, 153, 50, 5); //ceja der


  fill(196, 195, 180);
  ellipse(575, 183, 55, 45); //ojo izq
  ellipse(665, 183, 55, 45); //ojo der


  fill (6);
  ellipse(575, 183, 25, 20); //pupila
  ellipse(665, 183, 25, 20); //pupila


  fill(194, 94, 94);
  rect(575, 245, 90, 15); //boca


  fill(126, 92, 47);
  rect (514, 351, 30, 50);
  rect (689, 351, 30, 50); //brazo


  fill(0);
  rect(550, 300, 132, 200 ); //remera
  triangle(550, 300, 500, 343, 551, 376); //hombro izq
  triangle(682, 300, 730, 343, 682, 376); //hombro der
