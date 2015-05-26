PImage pictureOfRecord;

void setup() {
pictureOfRecord= loadImage("record.png");
size(pictureOfRecord.width, pictureOfRecord.height);


}
void draw(){
 image(pictureOfRecord, 1, 1);
  rotateImage(pictureOfRecord,90);

  image(pictureOfRecord, 1,1);
}
  void rotateImage(PImage image, int amountToRotate) {
      translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
      
      
}
