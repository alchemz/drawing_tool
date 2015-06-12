class trianglem
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

 float a, b;
  boolean isPressed = false;
  trianglem (float xpo, float ypos,int mx, int my, int x,int y)
  {
    
  }
  boolean click() 
  {
    mx = mouseX;
    my = mouseY ;

    if (mouseX>x && mouseX<x+40 && mouseY>y+200 && mouseY<y+240) 
    {
      isPressed = !isPressed;
      return true;
    } else {
      return false;
    }
  }

  void display()
  {

    fill(#F0A2AE);
    triangle(x, y+200, x+40, y+200, x+20, y+240);


    if (isPressed)
    {
      noFill();
    
      stroke(255);
      triangle(x, y+200, x+40, y+200, x+20, y+240);
      triangle(mouseX,mouseY,x,y,x+100,y+100);
      triangle(mouseX,mouseY,x,y,0,800);
      triangle(mouseX,mouseY,x,y,400,400);
      
    }
  }
}


