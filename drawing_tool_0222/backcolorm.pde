class backcolorm
{

  int x=750;
  int y=20;
  int w=40;
  int h=40;
  int mx;
  int my;
  color _c;
  color _originalC;
  float _xpos;
  float _ypos;
  int _x;
  int _y;
  boolean isPressed=false;

  backcolorm(color c, float xpos, float ypos, int x, int y)
  {
    _originalC = c;
    _c = _originalC;
    _xpos = xpos;
    _ypos = ypos;
    _x = x;
    _y = y;
  }


  boolean click()
  {
    mx = mouseX;
    my = mouseY ;

    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) 
    {
      isPressed=!isPressed;
      return true;
    } else
    {
      return false;
    }
  }

  void display()
  {
    //noStroke();
    //button to change the background color, the right half of the button
    //control the color of light grey, and the right side control the 
    //color of dark grey.
    fill(#E8F7FA);
    noStroke();
    rectMode(CENTER);
    rect(770, 0, 60, 800);
    
    fill(175);
    rectMode(CENTER);  
    rect(x+30, y+10, w/2, h);
    fill(190);
    rectMode(CENTER); 
    rect(x+10, y+10, w/2, h);

    if (isPressed)
    {
      noStroke();
      fill(#CBCACE);
      rectMode(CENTER);
      rect(370, 400, 740, 800);
    }
  }
}

