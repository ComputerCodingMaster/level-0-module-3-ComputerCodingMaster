import javax.swing.JOptionPane;
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
    if (isNear(mouseX,100)) {
      fill(15, 255, 0);
      ellipse(mouseX, mouseY, 20, 20);   
     if(isNear(50,mouseY)) {
     fill(15,255,0);
     ellipse(mouseX,mouseY,20,20);
     }
  }
  }
}
boolean isNear(int a, int b) {
  if (abs(a - b) < 70)    
    return true;
  else
    return false;
}
