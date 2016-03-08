void setup(){
size(960,540);
  
  
  
  
}
int Y=1;
int X=480;
int x=mouseX;
void draw(){
Y=Y+Y;
if (Y>960){
Y=1;
X=(int)random(960);
}

background(17,34,85);
fill(136,255,255);
ellipse(X,Y,50,50);
noStroke();
fill(0,0,0);
rect(480,460,60,80);




}



