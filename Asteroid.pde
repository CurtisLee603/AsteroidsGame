class Asteroid extends Floater {
  protected double rotSpeed;
  public Asteroid() {
    corners = 7;
    xCorners = new int[corners];
    xCorners[0] = 35;
    xCorners[1] = 15;
    xCorners[2] = -21;
    xCorners[3] = -33;
    xCorners[4] = -29;
    xCorners[5] = 0;
    xCorners[6] = 35;
    yCorners = new int[corners];
    yCorners[0] = 3;
    yCorners[1] = -27;
    yCorners[2] = -24;
    yCorners[3] = -13;
    yCorners[4] = 15;
    yCorners[5] = 29;
    yCorners[6] = 3;
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
