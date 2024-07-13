
//alt + 60 = <
//alt + 62 = >
//no tengo las teclas jeje
//Guillermo Joaquín Franco
//comisión 5
//legajo: 91308/0

int pantalla, tiempo, movX;
color rectColor;
boolean botonReinicio;
PImage imagen1, imagen01, imagen2, imagen3, imagen4, imagen5, sopa;
PFont tipo1;


void setup () {
  size(640, 480);
  pantalla = 0;
  tiempo = 0;
  movX= -275;
  rectColor = color(220, 120, 120);
  imagen1=loadImage("imagen1.jpg");
  imagen01=loadImage("imagen01.jpg");
  imagen2=loadImage("imagen2.png");
  imagen3=loadImage("imagen3.png");
  imagen4=loadImage("imagen4.jpg");
  imagen5=loadImage("imagen5.png");
  sopa=loadImage("sopa.jpg");
  tipo1=loadFont("mafalda.vlw");
  imageMode(CENTER);
}

void draw () {
  botonReinicio=(mouseX>510&&mouseX<510+110&&mouseY>430&&mouseY<430+30);
  textFont(tipo1);
  fill(0);

  if (pantalla == 0) {
    background(0);
    image(imagen1, 320, 240, 540, 480);
    text ("Mafalda", 240, 465);
    if (tiempo >= 150) {
      tiempo = 0;
      pantalla++;
    }
  } 
  if (pantalla == 1) {
    textSize(22);
    background(255);
    image(imagen2, 480, 180, 390, 320);
    text ("Creacion de Quino del año 1964,", 50, 60+80);
    text("Mafalda es una tira cómica \n protagonizada por una niña \n llamada Mafalda", 50, 90+80);
    text("que se muestra preocupada por \n la humanidad y la paz mundial \n y se rebela contra el mundo \nlegado por sus mayores.", 50, 170+80);
  }
  if (pantalla == 2) {
    textSize(22);
    background(255);
    image(imagen3, 170, 90, 290, 290);
    text ("Una niña inteligente que no duda \n en expresar su pensamiento crítico \n ante la situación que se le presenta.", 310, 120);
    text("Entusiasta de Los Beatles, el Pájaro Loco y los panqueques.\n Incomoda frecuentemente a los adultos con sus cuestionamientos\n sobre lo socialmente establecido y sus preguntas relativas al\n manejo político del mundo. Se imagina a sí misma estudiando idiomas y\n trabajando como intérprete en las Naciones Unidas para contribuir\n a la paz mundial.",15,290);
  }
  if (pantalla == 3) {
    background(255);
    textSize(25);
    image(imagen01, 320, 240, 640, 640);
    text("Tiene unos grandes amigos", 140, 50);
    text("Miguelito", 45, 470);
    text("Manolito", 150, 460);
    text("Felipe", 380, 460);
    text("Susanita", 450, 470);
    text("  Guille", 555, 230);
  }



  if (pantalla == 4) {
    background(255);
    textSize(32);
    image(imagen4, 500, height/2);
    text("y tiene un disgusto\n particular...", 30, 90);
    text("Que simplemente evita \n nombrarlo pero...", 25, 200);
    if (pantalla == 4) {
      if (mouseX>320) {
        image(imagen5, 500, height/2, 300, 300);
        textSize(45);
        movX++;
        text ("¡¡¡Odia la sopa!!!", movX, 390);
      }
      if (movX==700) {
        movX= -275;
      }
      if (mouseX>0) {
        image(sopa, mouseX, mouseY, 60, 60);
      }
      if (mouseX>510&&mouseX<620&&mouseY>430&&mouseY<460) {
        rectColor = color(255, 80, 0);
      } else {
        rectColor = color(220, 120, 120);
      }
    }
  }
  if (pantalla == 4 && tiempo >=450) {
    push(); 
    fill(rectColor);
    rect(510, 430, 110, 30, 28);
    pop();
    textSize(18);
    text ("Reiniciar", 530, 450);
  }
  tiempo++;
  if (tiempo==450) {
    tiempo=0;
    pantalla++;
  } else if (tiempo==449&&pantalla==4) {
    tiempo=451;
  }
  print(tiempo);
}

void mouseClicked() {
  //pantalla++;
  if (pantalla >= 4) {
    if (botonReinicio) {
      pantalla = 0;
      tiempo = 0;
    }
  }
}
