void setup()
{
  size (400,400);
  stroke (255);
  frameRate(30);
}


int j;
color c;

void draw () {
  background (230); 

  c = color(2*j, j, 67, 180);
  j++;
  
  fill(c);
  if (j>400) {
    j=j-1;
  }
  ellipse (j*2,150, j/2, 200);
}



