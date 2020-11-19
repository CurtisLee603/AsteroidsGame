class Star {
  protected int myX, myY;
  protected int myColor;
  public Star() {
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  public void show() {
    fill(myColor);
    noStroke();
    ellipse((float)myX, (float)myY, 5, 5);
  }
}
