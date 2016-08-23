void setup(){
size(960,540); 
}
int Y=1;
int X=480;
int x=mouseX;
int score;

void draw(){
Y=Y+5;
if (Y>540){
Y=1;
X=(int)random(960);
}

background(17,34,85);
fill(136,255,255);
ellipse(X,Y,50,50);
noStroke();
fill(0,0,0);
rect(mouseX,460,60,80);
fill(255);
textSize(16);
text("Volume= " + score+" ml.", 20, 20);
if(Y>460){
  checkCatch(X);
}
}
void checkCatch(int x){
if (x > mouseX && x < mouseX+60)
      score= score+1;
   //else if (score > 0)
//score--;

}


