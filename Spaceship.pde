class Spaceship extends Floater {
  public Spaceship() {
    corners = 18;
    xCorners = new int[corners];
    xCorners[0] = 6;
    xCorners[1] = -2;
    xCorners[2] = -2;
    xCorners[3] = 18;
    xCorners[4] = 14;
    xCorners[5] = 0;
    xCorners[6] = -10;
    xCorners[7] = -4;
    xCorners[8] = -4;
    xCorners[9] = -6;
    xCorners[10] = -4;
    xCorners[11] = -4;
    xCorners[12] = -10;
    xCorners[13] = 0;
    xCorners[14] = 14;
    xCorners[15] = 18;
    xCorners[16] = -2;
    xCorners[17] = -2;
    yCorners = new int[corners];
    yCorners[0] = 0;
    yCorners[1] = 2;
    yCorners[2] = 6;
    yCorners[3] = 8;
    yCorners[4] = 10;
    yCorners[5] = 12;
    yCorners[6] = 8;
    yCorners[7] = 6;
    yCorners[8] = 2;
    yCorners[9] = 0;
    yCorners[10] = -2;
    yCorners[11] = -6;
    yCorners[12] = -8;
    yCorners[13] = -12;
    yCorners[14] = -10;
    yCorners[15] = -8;
    yCorners[16] = -6;
    yCorners[17] = -2;
    myColor = color(255);
    myCenterX = 400;
    myCenterY = 400;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
