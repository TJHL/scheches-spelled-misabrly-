void setup ()   {
size(1000,1000);}
void draw ()  {
  background(254,0,0);
 fill(255,255,255);
ellipse(250,300,200,200);
fill(255,255,255);
ellipse(750,300,200,200); 
  
  
if(mouseX<175){
fill(0,0,0);  
ellipse(175,mouseY,50,50);}

if(mouseX>325){
 fill(0,0,0);
ellipse(325,mouseY,50,50);}

if(mouseY>375){
  fill(0,0,0);
ellipse(mouseX,375,50,50);}

if(mouseY<225){
  fill(0,0,0);
ellipse(mouseX,225,50,50);}

else{
  
fill(0,0,0);
ellipse(mouseX+500,mouseY,50,50);
fill(0,0,0);
ellipse(mouseX,mouseY,50,50);}


}

  
 

