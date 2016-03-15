
import ddf.minim.*;int x=200;
Minim minim;
AudioSample sound;
PImage backgroundImage;
int xspeed=5;
int y=200;
int yspeed=6;
void setup(){
  minim = new Minim (this);
  sound = minim.loadSample("4359__noisecollector__pongblipf4.wav", 128);
  backgroundImage = loadImage("pong-4.gif");
size(500,500);
}
void draw(){
  image(backgroundImage, 0, 0);
  image(backgroundImage, 0, 0, width, height);
 if(x>475){
 xspeed= -5;
 sound.trigger(); }
 if(x<25){
 xspeed=5;
 sound.trigger(); }
 if(y>475){
 yspeed= -5;
 sound.trigger(); }
 if(y<25){
 yspeed=5;sound.trigger(); }
 x=x+xspeed;
 y=y+yspeed;
 background(0,0,0);
 ellipse(x,y,50,50);
 fill(255,255,255);
 stroke(0,0,0);
 //hi
}
