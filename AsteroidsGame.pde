Star[] stars = new Star[100];
Spaceship bob = new Spaceship();
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean dIsPressed = false;
public void setup() 
{
  size(800, 800);
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  bob.show();
  bob.move();
  if (wIsPressed == true) {
    bob.accelerate(0.05);
  }
  if (aIsPressed == true) {
    bob.turn(-5.0);
  }
  if (dIsPressed == true) {
    bob.turn(5.0);
  }
}
public void keyPressed() {
  if (key == 'w') {
    wIsPressed = true;
  }
  if (key == 'a') {
    aIsPressed = true;
  }
  if (key == 'd') {
    dIsPressed = true;
  }
}
public void keyReleased() {
  if (key == 'w') {
    wIsPressed = false;
  }
  if (key == 'a') {
    aIsPressed = false;
  }
  if (key == 'd') {
    dIsPressed = false;
  }
}
