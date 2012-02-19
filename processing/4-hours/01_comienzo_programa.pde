int a = 0;
float b = 0.0;

void setup()
{
  size(200, 200);
  stroke(255);
  frameRate(30);
}

void draw()
{
  background(51)
  
  a = a + 1;
  b = b + 0.2; 
  line(a, 0, a, height/2);
  strokeWeight(2)
  line(b, height/2, b, height);
  strokeWeight(8);
  if(a > width) {
    a = 0;
  }
  if(b > width) {
    b = 0;
  }
}
