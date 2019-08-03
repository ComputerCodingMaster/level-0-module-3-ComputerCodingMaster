void setup() {
  size(1170, 500);
  PImage minecraft = loadImage("jpg.jpg");
  minecraft.resize(1170, 500);
  background(minecraft);
  PImage creeper;
  creeper=loadImage("png.png");
  creeper.resize(5, 15);
  image(creeper, mouseX, mouseY);
}
void draw() {
  if (mousePressed) {
    fill(255, 0, 0);
    ellipse(mouseX, mouseY, 20, 20);
    if (isNear(mouseX, mouseY)) {
    ellipse(mouseX,mouseY, 20,20);   
    fill(15,255,0);
  }
}
}
boolean isNear(int a, int b) {
if (abs(a - b) < 10)
     return true;
else
     return false;
}
