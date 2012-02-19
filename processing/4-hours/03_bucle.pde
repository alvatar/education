float a, b, c = 0;
float x1, x2;

void setup()
{
  size (400,400);
  stroke (255);
  frameRate(30);
  background (120); 
}

void draw () {
  for ( a=0; a< 400; a=a+10) {
    for (b=0; b<400; b= b+10) {
      ellipse(a,b,c/100,c/100);
      c++;
    }
  }
}
