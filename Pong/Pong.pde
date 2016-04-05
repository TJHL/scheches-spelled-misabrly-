import ddf.minim.*;
Minim minim;
AudioSample sound;
PImage backgroundImage;
int x=200;
int y=200;
int xspeed=5;
int yspeed=5;
int keyX=250;
int toplayerscore=0;
float bottomplayerscore=0;
void setup() {
  minim = new Minim (this);
  sound = minim.loadSample("4359__noisecollector__pongblipf4.wav", 128);
  // backgroundImage = loadImage("ponG.jpg");
  size(500, 500);
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
  //image(backgroundImage, 0, 0);
  ellipse(x, y, 50, 50);
  fill(255, 255, 255);
  stroke(0, 0, 0);
  rect(mouseX, 400, 100, 25);
  if (intersects(x, y, mouseX, 400, 100)) {
    yspeed= -5;
    sound.trigger();
  }

  rect(keyX, 75, 100, 25);
  if (keyPressed) {
    if (keyCode == RIGHT) {
      keyX=keyX+10;
    }
    if (keyCode == LEFT) {
      keyX=keyX-10;
    }
  }
  if (intersects(x, y, keyX, 125, 100)) {
    yspeed= 5;
    sound.trigger();
  }

  
  textSize(30);
  text((int)bottomplayerscore, 10, 450);
  if (y==475&&yspeed==-5) {
    toplayerscore=toplayerscore+1;
    println(toplayerscore);
  }
   textSize(30);
  text((int)toplayerscore, 10, 70);
  if (y==25&&yspeed==5) {
    bottomplayerscore=bottomplayerscore+1;
    println(bottomplayerscore);}

}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
  if (ballY > paddleY -25 && ballY < paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
    return true;
  else 
    return false;
}

