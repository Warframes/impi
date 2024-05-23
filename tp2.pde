
//alt + 60 = <
//alt + 62 = >
//no tengo las teclas jeje
//Guillermo Joaquín Franco
//comisión 5
//legajo: 91308/0

int pantalla;
int tiempo;
boolean botonReinicio;


void setup (){
size(640,480);
pantalla = 0;
tiempo = 0;
//rectMode(CENTER);
}

void draw (){
  botonReinicio=(mouseX>510&&mouseX<510+110&&mouseY>430&&mouseY<430+30);
  //print(botonReinicio);
  tiempo++;
  if (pantalla == 0){
    background(0);
    text ("pantalla" + pantalla, 320, height/2);}
  if (pantalla == 1){
  background(100);
  text ("pantalla" + pantalla, 320, height/2);
  }
  if (pantalla == 2){
  background(150);
  text ("pantalla" + pantalla, 320, height/2);}
  if (pantalla == 3){
  background(50);
  text ("pantalla" + pantalla, 320, height/2);
  
}
  if(pantalla == 3 && tiempo >=450){
  push(); 
    fill(120,120,60);
  rect(510,430,110,30,28);
  pop();
  text ("Inicio",550,450);
  }
  if (tiempo>=450){
    tiempo=0;
    pantalla++;
    
}
   
}
  
  void mouseClicked(){
  
    if(pantalla > 3){
   if(botonReinicio){
      pantalla = 0;
      tiempo = 0;}}
  }
