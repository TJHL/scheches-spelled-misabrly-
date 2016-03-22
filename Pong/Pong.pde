import ddf.minim.*;
Minim minim;
AudioSample sound;
PImage backgroundImage;
int x=200;
int y=200;
int xspeed=6000;
int yspeed=5;
void setup() {
  minim = new Minim (this);
  sound = minim.loadSample("4359__noisecollector__pongblipf4.wav", 128);
  backgroundImage = loadImage("ponG.jpg");
  size(505, 500);
}
void draw() {
  if (x>475) {
    xspeed= -5;
    sound.trigger();
  }
  if (x<25) {
    xspeed=5;
    sound.trigger();
  }
  if (y>475) {
    yspeed= -5;
   sound.trigger();
  }
  if (y<25) {
    yspeed=5;
    sound.trigger();
  }
  x=x+xspeed;
  y=y+yspeed;
  background(0, 0, 0);
  image(backgroundImage, 0, 0);
  ellipse(x, y, 50, 50);
  fill(255, 255, 255);
  stroke(0, 0, 0);
  rect(mouseX, 400, 100, 25);
  if(intersects(x,y,mouseX,400,100)){
   yspeed= -5;
     sound.trigger();
    
  }
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
  if (ballY > paddleY -25 && ballY < paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
    return true;
  else 
    return false;
}

