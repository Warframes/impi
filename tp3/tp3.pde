//Guillermo Joaquín Franco 41315056
// 91308/8
// comisión 5
PImage arte;
int  ls, ls1, x0, y0, x1, y1;
float r, g, b;
void setup() {
  size(800, 400);
  arte=loadImage("arte.jpg");
  rectMode(CENTER);
  strokeWeight(5);
  stroke(240, 72, 39);
  x0=500;
  x1=700;
  y0=100;
  y1=300;
  ls= color(240, 72, 39);
  ls1= color(244, 55, 17);
}

void draw() {
  background(240, 72, 39);
  image(arte, 0, 0, 400, 400);
  cuadrados1();
  cuadrados2();
  cuadrados3();
  cuadrados4();
}

void keyPressed() {
  if (key=='a') {
    rectMode(CENTER);
    r=random(0, 255);
    g=random(0, 255);
    b=random(0, 255);
    ls=color(r, g, b);
    ls1=color(r, g, b);
  }

  //botón de reinicio
  if (key=='s') {
    ls= color(240, 72, 39);
    ls1= color(244, 55, 17);
  }
}

void mouseMoved() {
  rotate(radians(frameCount));
  cuadrados1();
}
