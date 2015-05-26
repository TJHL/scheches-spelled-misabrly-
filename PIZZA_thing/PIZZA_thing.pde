void setup(){
  size (1000,1000);
  fill(255,204,153);
  ellipse(500,500,1000,1000);
  fill(255,0,0);
  ellipse(500,500,900,900);
  fill(255,255,102);
  ellipse(500,500,850,850);
  
  
  
}
void draw () {
  
  PImage pepperoni = loadImage("pepperoni.gif");
  PImage sausage = loadImage("sausage.gif");
  sausage.resize(50,50);
  PImage pizza = loadImage("pizza.gif");
  pizza.resize(50,50);
  pepperoni.resize(100,100);
  image(pepperoni,500,500);
  image(pepperoni,789,354);
  image(pepperoni,249,789);
  image(pepperoni,649,287);
  image(pepperoni,548,73);
  
  if (mousePressed){
  image(pepperoni,mouseX,mouseY);
  image(sausage,mouseX+100,mouseY);
  image(pizza,mouseX,mouseY+100);
  }
  
}
