PImage naranja;


void setup(){
 size(800,400);
 naranja = loadImage("naranja.jpg");
 noStroke();
 
}

void draw(){
 background(120);
 image(naranja, 0, 0, 400, 400);
 fill(240,131,15);
 circle(626,220,250);
 fill(0,120,0);
 quad(627,96,646,99,644,46,662,50);
 triangle(642,69,530,72,475,171);
}

void mouseClicked(){

 println(mouseX,mouseY);
 

}
