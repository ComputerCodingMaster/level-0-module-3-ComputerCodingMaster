int creeperX;
int creeperY;
PImage minecraft;
PImage creeper;


void setup() {
  size(1170, 500);
  minecraft = loadImage("jpg.jpg");
  minecraft.resize(1170, 500);
  background(minecraft);
  creeper=loadImage("png.png");
  creeper.resize(5, 15);
  creeperX=600;
  creeperY=300;
  image(creeper, creeperX, creeperY);
}
void draw() {   
  if (mousePressed) {
    fill(255, 0, 0);
    ellipse(mouseX, mouseY, 20, 20);    
    if (isNear(mouseX, creeperX)) {
      if (isNear(mouseY, creeperY)) {
        background(minecraft);
        fill(15, 255, 0);
        ellipse(mouseX, mouseY, 20, 20);
        println("You found the creeper!");
        creeperX=500;
        creeperY=90;
        image(creeper, creeperX, creeperY);
      }
    }
  }
}
boolean isNear(int a, int b) {
  if (abs(a - b) < 10)    
    return true;
  else
    return false;
}
