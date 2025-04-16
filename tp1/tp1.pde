PImage ukelele;

void setup(){  
  size( 800, 400 );  
  background( 200 ); 
  
  
  ukelele = loadImage("ukelele 2.jpeg");
}

void draw(){  
  background( 200 ); 
  image( ukelele, 0, 0);  


//circulos principales
noStroke();
fill (#e6b0b0);
circle(188+400, 319, 108);
circle(188+400, 245, 80);

strokeWeight( 1 );

//rectangulo de abajo
fill (0);
rect (165+400, 323, 43, 17);

//circulos centrales
noFill();
stroke (0);
circle(188+400, 264, 48);
circle(188+400, 264, 39);
fill(#3e291b);
circle(188+400, 264, 32);

//linea y circulos dentro del rectangulo
fill (255);
stroke(255);
line(608, 327, 565, 327);

circle(170+400, 335, 6);
circle(203+400, 335, 6);

//brazo del ukelele
fill (0);
stroke(#797666);
quad(574, 222, 604, 222, 600, 92, 578,92);

//trastes
stroke(#797666);
line(603, 208, 574, 208);
line(603, 203, 576, 203);
line(603, 198, 576, 198);
line(603, 193, 576, 193);
fill (200);
circle(189+400, 190, 5);

stroke(#797666);
line(603, 186, 576, 186);
line(603, 178, 576, 178);
line(602, 170, 576, 170);

circle(189+400, 167, 5);

stroke(#797666);
line(601, 162, 576, 162);
line(601, 154, 576, 154);
line(599, 146, 576, 146);


circle(189+400, 142, 5);

stroke(#797666);
line(601, 136, 576, 136);
line(601, 126, 577, 126);
line(601, 116, 577, 116);
line(600, 106, 577, 106);

//cejuela
strokeWeight( 3 );
stroke(#ead6b5);
line(601, 90, 577, 90);

//clavijero
noStroke();
fill (#9b9180);
rect (567, 36, 6, 8);
rect (610, 36, 6, 8);
rect (567, 56, 6, 8);
rect (610, 56, 6, 8);





noStroke();
fill(#e6b0b0);
rect (570, 16, 41, 61, 570, 77, 610, 77);

strokeWeight( 12 );
stroke(#e6b0b0);
line(577, 65, 583, 83);
strokeWeight( 12);
stroke(#e6b0b0);
line(601, 65, 596, 83);
square(584, 73, 10);

strokeWeight( 1 );
fill (255);
circle(600, 58, 10);
circle(600, 38, 10);
circle(580, 58, 10);
circle(580, 38, 10);

noStroke();
fill (#9b9180);
circle(601, 57, 5);
circle(601, 37, 5);
circle(581, 57, 5);
circle(581, 37, 5);

fill(#ead6b5);
ellipse(563, 40, 8, 12);
ellipse(563, 60, 8, 12);
ellipse(617, 60, 8, 12);
ellipse(617, 40, 8, 12);

noStroke();
fill (#e6b0b0);
triangle(581, 27, 590, 10, 601, 27);
triangle(571, 33, 572,18, 581, 23);
triangle(605, 22, 610,18, 610, 27);

//cuerdas
stroke(255);
line(576, 339, 580, 63);
line(584, 339, 585, 40);
line(592, 339, 594, 40);
line(598, 339, 598, 63);

//linea divisoria
  strokeWeight( 5 );
  stroke(0);
  line( 400, 0, 400, 400 );

  println( mouseX + " / " + mouseY );
}
