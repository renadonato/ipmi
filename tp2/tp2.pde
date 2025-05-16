//tp2
//Renata Donato
PFont fuente;
PImage foto1, foto2, foto3, foto4;
int segundos, py, px1, px2, px3, px4, x, y, ancho, alto;
String texto1, texto2, texto3, texto4, texto5, play;

void setup(){
  size(640, 480);
  fuente = loadFont("ArialNarrow-48.vlw");
  textFont(fuente);
  segundos = 0;
  foto1 = loadImage ("robloxx.png");
  foto2 = loadImage ("roblox2.jpeg");
  foto3 = loadImage ("roblox3.jpg");
  foto4 = loadImage ("roblox4.jpg");
  texto1 = "ROBLOX";
  texto2= "Es una plataforma de\nvideojuegos en línea";
  texto3= "Los usuarios pueden\ncrear sus propios juegos\ny jugar los de otros. Es una mezcla\nde red social, plataforma de\ndesarrollo y comunidad de jugadores.";
  texto4= "DATOS\nINTERESANTES";
  texto5= "En 2020, su popularidad creció mucho durante la pandemia.\nRoblox tiene millones de juegos en géneros como aventura, rol,\nsimulación y más.\nTiene más de 200 millones de usuarios activos mensuales\nen todo el mundo.";
  py= 550;
  px1=1000;
  px2=-600;
  px3=-200;
  px4= 485;
  x = 220;
  y = 400;
  ancho = 200;
  alto = 50;
  play = "PLAY";
}

void draw(){
  background(0);
  if (frameCount % 60==0){
    segundos ++; 
  }
  
  if (segundos < 3) {
    image(foto1, 0, 0, 640, 480);
    fill(215, 30, 9);
    textSize(90);
    text(texto1,180,py);
    
    
  } else if (segundos>=3&&segundos<7){
    image(foto2, 0, 0, 640, 480);
    fill(255);
    textSize(29);
    text(texto2,px1,50);
    textSize(24);
    text(texto3,px2, 350);
    
    
  } else if(segundos>=7&&segundos<15){
    image(foto3, 0, 0, 640, 480);
    fill(0);
    textSize(29);
    text(texto4,px3,50);
    textSize(24);
    text(texto5,px4, 175);
     if(px3<20){
    px3+=2;
    }
     if(px4>20){
    px4-=2;
    }
  }
   
   else { 
    image(foto4, 0, 0, 640, 480);
    fill(215, 30, 9);
    rect(x, y, ancho, alto);
    fill(255);
    text(play, 300, 435);
   }
    
    
 
   
   
   if(py>470){
    py--;
    }
    
   if(px1>380){
    px1-=2;
    }
    
   if(px2<15){
    px2+=2;
    }
   
  
    
 
}
void mousePressed() {
  if (segundos > 15 && mouseX >= x && mouseX < x+ancho && mouseY > y && mouseY < y+alto){
   segundos=0;
  py= 550;
  px1=1000;
  px2=-600;
  px3=-300;
  px4= 485;
 }
}
