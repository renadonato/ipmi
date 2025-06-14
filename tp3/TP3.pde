//https://youtu.be/t9or6D2xRiw
//Renata Donato

PImage imagen;
float centroX, centroY, tamañocirculos = 30, XOriginal, YOriginal;
boolean cambio = false;

void setup() {
  size(800, 400);
  imagen = loadImage("imagen.jpg");
  centroX = 600;
  centroY = height / 2;
  XOriginal = centroX;
  YOriginal = centroY;
}

void draw() {
  image(imagen, 0, 0, width / 2, height);
  if (cambio) {
    fill(255);
    noStroke();
    rect(width / 2, 0, width / 2, height);
  } else {
    fill(0);
    noStroke();
    rect(width / 2, 0, width / 2, height);
  }
  
  dibujo(centroX, centroY);
}

void dibujo(float xCentro, float yCentro) {
  noStroke();

  if (cambio) {
    fill(0);
  } else {
    fill(255);
  }

  float espaciado = 20;

  for (float y = espaciado / 2; y < height; y += espaciado) {
    for (float x = width / 2 + espaciado / 2; x < width; x += espaciado) {
      float distancia = dist(x, y, xCentro, yCentro);
      float tamaño = calcularTamaño(distancia);
      ellipse(x, y, tamaño, tamaño);
    }
  }
}

float calcularTamaño(float distancia) {
  return map(distancia, 0, width / 2, 2, tamañocirculos);
}

void mouseMoved() {
  centroX = constrain(mouseX, width / 2, width);
  centroY = mouseY;
}

void mousePressed() {
  cambio = !cambio;
}
void keyPressed() {
  if (key == ' ') {
    reiniciar();
  }
}

void reiniciar() {
  centroX = XOriginal;
  centroY = YOriginal;
  cambio = false;
}
