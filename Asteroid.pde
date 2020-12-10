class Asteroid extends Floater {
  protected double rotSpeed;
  public Asteroid(double size) {
    corners = 7;
    xCorners = new int[corners];
    xCorners[0] = 35 * (int)size;
    xCorners[1] = 15 * (int)size;
    xCorners[2] = -21 * (int)size;
    xCorners[3] = -33 * (int)size;
    xCorners[4] = -29 * (int)size;
    xCorners[5] = 0 * (int)size;
    xCorners[6] = 35 * (int)size;
    yCorners = new int[corners];
    yCorners[0] = 3 * (int)size;
    yCorners[1] = -27 * (int)size;
    yCorners[2] = -24 * (int)size;
    yCorners[3] = -13 * (int)size;
    yCorners[4] = 15 * (int)size;
    yCorners[5] = 29 * (int)size;
    yCorners[6] = 3 * (int)size;
    myColor = color((int)(Math.random()*20) + 50);
    myCenterX = Math.random()*800;
    myCenterY = Math.random()*800;
    myXspeed = Math.random();
    myYspeed = Math.random();
    rotSpeed = (Math.random() * 0.5) - 0.25;
    myPointDirection = 0;
  }
  public void moving() {
    turn(rotSpeed);
    move();
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
