Ball b;
public void setting() {
  super.settings();
}
public void setup() {
  size(800, 800);
  b = new Ball(40);
}

public void draw() {
  // 1 -> first Ball
  // 2 -> second Ball
  // 3 -> Third Ball
  // 4 -> fourth Ball
  b.drawBall(b.getX(), b.getHeightOfBall_fromTop_for(1), b.getDiameter());
  b.drawBall(b.getY(), b.getHeightOfBall_fromTop_for(2), b.getDiameter());
  b.drawBall(b.getZ(), b.getHeightOfBall_fromTop_for(3), b.getDiameter());
  b.drawBall(b.getW(), b.getHeightOfBall_fromTop_for(4), b.getDiameter());
  b.moveEachBallFrom_LeftToRight();
}
class Ball {
  private float x;
  private float y;
  private float z;
  private float w;
  private int diameter;
  Ball(int diameter) {
    x=0;
    y=0;
    z=0;
    w=0;
    this.diameter = diameter;
  }
  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getZ() {
    return z;
  } 
  public float getW() {
    return w;
  }
  public int getDiameter() {
    return diameter;
  }
 public void moveEachBallFrom_LeftToRight() {
    x+=1;
    y+=2;
    z+=3;
    w+=4;
  }
  public void drawBall(float x, float y, int diameter) {
    stroke(0);
    fill(128);
    ellipse(x, y, diameter, diameter);
  }
  public float getHeightOfBall_fromTop_for(int ball) {
    return height * ball/5;

  }
}
