int x = 25;
int y = 25;
PImage creeper;

void setup() {
  size(1170, 500);
  PImage minecraft = loadImage("jpg.jpg");
  minecraft.resize(1170, 500);
  background(minecraft);
  creeper=loadImage("png.png");
  creeper.resize(5, 15 );
  image(creeper, x, y);
}
void draw() {
  if (mousePressed() || mouseClicked()) {
    System.out.println("X, "+mouseX + " " +x);
    if (isNear(mouseX, x)) {
      System.out.println("Y, "+mouseY + " " +y);
      if (isNear(mouseY, y)) {      
        System.out.println("Found it!!!!!!!!!!!!!!!");     
        ellipse(mouseX, mouseY, 20, 20);   
        fill(15, 255, 0); 
        x= 100;
        y= 100;
        image(creeper, x, y);
      }
    } else {
      fill(255, 0, 0);
      ellipse(mouseX, mouseY, 20, 20);
    }
  }
}
boolean isNear(int a, int b) {
  if (abs(a - b) < 10)
    return true;
  else
    return false;
}
