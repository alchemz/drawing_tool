
backcolorm myBack;
ellipsem myEllipse;
rectm myRect;
trianglem myTriangle;
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

float a, b, c, d;

void setup()
{
  noStroke();

  myBack= new backcolorm(color(203, 202, 206), 750, 20, 40, 40);
  myEllipse=new ellipsem();
  myRect=new rectm(color(203, 202, 206), 750, 20, 40, 40);
  myTriangle=new trianglem(750,220,790,220,770,440);
  size(800, 800);
  background(140);
  fill(#98EFFF);
  rect(740,0,60,800);
}

void draw()
{

  myBack.display();
  myEllipse.display();
  myRect.display();
  myTriangle.display();

  if (myBack.isPressed)
  {
    changeBack();
  }
  if (myRect.isPressed)
  {
   // drawRect();
  }
  if (myTriangle.isPressed)
  {
    drawTriangle();
  }
  if (myEllipse.isPressed)
  {
    drawEllipse();
  }
}


void mousePressed() 
{
  //myBack=button1
  //myRect=button2

  //myTriangle=button3;
  //myEllipse=button4
  if (myBack.click()) 
  {
    myRect.isPressed = false;
    myTriangle.isPressed = false;
    myEllipse.isPressed = false;
  } else if (myRect.click()) 
  {
    myBack.isPressed = false;
    myTriangle.isPressed = false;
    myEllipse.isPressed = false;
  } else if (myTriangle.click())
  {
    myBack.isPressed = false;
    myRect.isPressed = false;
    myEllipse.isPressed = false;
  } else if (myEllipse.click())
  {
    myBack.isPressed = false;
    myRect.isPressed = false;
    myTriangle.isPressed = false;
  }

  saveFrame("Drawingtool####.tiff");
  println("ScreenShots");

}

void changeBack()
{
  fill(#CBCACE);
  noStroke();
 // rect(0, 0, 740, 800);
  println("change background color to light grey.");
}



void drawTriangle() {
  println("drawtriangle");
}
void drawEllipse() {
  a=random(180, 250);
  b=random(180, 250);
  c=random(180, 250);
  d=random(180, 250);
  noStroke();
  fill(a, b, c, d);
  ellipseMode(CENTER);
  ellipse(mouseX, mouseY, a, b);
  println("drawEllipse");
}

