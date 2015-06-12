class rectm
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
  double radius;

  float a, b;

  boolean isPressed = false;
  rectm(color c, float xpos, float ypos, int x, int y)
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

    if (mouseX > x && mouseX < x+40 && mouseY > y+100 && mouseY < y+140) 
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
    fill(#FAB8F9);
    rect(x+20, y+100, w, h);

    if (isPressed)
    {
      rectMode(CENTER);
      strokeWeight(10);
      stroke(252, 61, 90);

      fill(#C6D9FF);
      rect(200, 200, 390, 390);
      fill(#FDFFC6);
      rect(200, 600, 390, 390);
      fill(#FC9A3D);
      rect(600, 200, 390, 390);
      fill(#F38DF5);
      rect(600, 600, 390, 390);
      noStroke();
      fill(#57F06A);
      rect(400, 400, 500, 500);
      noFill();

      strokeWeight(2);
      stroke(247, 240, 85);

      rect(x+20, y+100, w, h);
      radius=100;

      a=50;
      b=50;
      c=random(220, 240);
      d=random(240, 250);
      if (mouseX<300 && mouseX>0 && mouseY>0 && mouseY<300)
      {
        for (int i=1; i<10; i++)
        {
          for (int j=1; j<i; j++)
          {
            //a=random(50,100);
            noStroke();
            //red
            fill(#FF5252);
            rectMode(CENTER);
            rect(a, b, 30, 30);
            //pink
            fill(#FF8BFA);
            rect(a-80, b+140, 50, 50);
            //yellow
            fill(#C8FF8B);
            rect(a+100, b-100, 50, 50);
            //green
            fill(#9BFA30);
            rect(a-150, b+200, 60, 60);
            //blue
            fill(#5EF5DA);
            rect(a+150, b-200, 60, 60);
            //darkblue
            fill(#7990FF);
            rect(a-150, b+330, 70, 70);
            fill(#D679FF);
            rect(a+150, b-330, 70, 70);
            a=i*100;
            b=i*100;
          }
        }
        /*
        noStroke();
         fill(#FF5252);
         rectMode(CENTER);
         rect(mouseX, mouseY, 70, 40);
         fill(#FABC5D);
         rect(mouseX, mouseY, 40, 70);
         */
      }
    }
  }
}

