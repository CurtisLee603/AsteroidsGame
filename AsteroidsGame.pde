Star[] stars = new Star[100];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean dIsPressed = false;
public void setup() 
{
  size(800, 800);
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for(int i = 0; i < 10; i++) {
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  for(int i = 0; i < pew.size(); i++) {
    //use a loop to match each bullet with every asteroid
    for(int j = 0; j < rocks.size(); j++) {
      float d = dist((float)rocks.get(j).getX(), (float)rocks.get(j).getY(), (float)pew.get(i).getX(), (float)pew.get(i).getY());
      if(d < 45) {
        rocks.remove(j);
        pew.remove(i);
        break;
      }
    }
  }
  for(int i = 0; i < rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).moving();
    float d = dist((float)rocks.get(i).getX(), (float)rocks.get(i).getY(), (float)bob.getX(), (float)bob.getY());
    if(d < 50) {
      noLoop();
      background(0);
    }
  }
  bob.show();
  bob.move();
  for(int i = 0; i < pew.size(); i++) {
    pew.get(i).show();
    pew.get(i).move();
  }
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
  if (key == ' ') {
    pew.add(new Bullet(bob));
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
