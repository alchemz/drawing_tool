class ellipsem
{
  int x=750;
  int y=20;
  int w=40;
  int h=40;

  color _c;
  color _originalC;
  float _xpos;
  float _ypos;
  int mx;
  int my;
  int _x;
  int _y;

  float a, b,c,d;

  boolean isPressed = false;
  ellipsem()
  {
  }
  boolean click() 
  {
    mx = mouseX;
    my = mouseY ;

    if (mouseX<790 && mouseX>750 && mouseY>310 && mouseY<350) 
    {
      isPressed = !isPressed;
      return true;
    } else {
      return false;
    }
  }

  void display()
  {
    
    fill(#B1A2F0);
    ellipseMode(CENTER);
    ellipse(x+20, y+310, 50, 40);
//770 330 50 40 
    if (isPressed)
    {
    
      a=random(180, 250);
    b=random(180, 250);
    c=random(180,250);
    d=random(180,250);
    noStroke();
      fill(a, b, c,d);
      ellipseMode(CENTER);
      ellipse(mouseX, mouseY, a, b);
      noFill();
      stroke(3);
      stroke(172,245,141);
      ellipse(x+20, y+310, 50, 40);
    }
  }
}

