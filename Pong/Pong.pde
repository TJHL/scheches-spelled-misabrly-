import ddf.minim.*;
Minim minim;
AudioSample sound;
PImage backgroundImage;
Ball ball;
Paddle top;
Paddle bottom;
int keyX=250;
int toplayerscore=0;
float bottomplayerscore=0;
void setup() {
  minim = new Minim (this);
  sound = minim.loadSample("4359__noisecollector__pongblipf4.wav", 128);
  size(500, 500);
  ball= new Ball();
  top = new Paddle(true);
  bottom = new Paddle(false);
}
void draw() {
  ball.move();
  background(0, 0, 0);
  ellipse(ball.x, ball.y, 50, 50);
  fill(255, 255, 255);
  stroke(0, 0, 0);
  if (keyPressed) {
    if (keyCode == RIGHT) {
      top.x=top.x+10;
    }
    if (keyCode == LEFT) {
      top.x=top.x-10;
    }
  }
  bottom.x= mouseX;
  top.draw();
  bottom.draw();
  if (intersects(ball.x, ball.y, mouseX, 400, 100)) {
    ball.yspeed= -5;
    sound.trigger();
  }
  if (intersects(ball.x, ball.y, top.x, 125, 100)) {
    ball.yspeed= 5;
    sound.trigger();
  }
  textSize(30);
  text((int)bottomplayerscore, 10, 450);
  if (ball.y==475&&ball.yspeed==-5) {
    toplayerscore=toplayerscore+1;
    println(toplayerscore);
  }
  textSize(30);
  text((int)toplayerscore, 10, 70);
  if (ball.y==25&&ball.yspeed==5) {
    bottomplayerscore=bottomplayerscore+1;
    println(bottomplayerscore);
  }
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
  if (ballY > paddleY -25 && ballY < paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
    return true;
  else 
    return false;
}
class Ball {
  int x=200;
  int y=200;
  int xspeed=5;
  int yspeed=5;
  void move() {
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
  }
}
class Paddle {
  int width, height, y, x;
  Paddle(boolean isTop) {
    width=100;
    height=25;
    if (isTop) {
      y=75;
    } else {
      y= 400;
    }
  }
  void draw() {
    rect(x, y, width, height);
  }
} 

