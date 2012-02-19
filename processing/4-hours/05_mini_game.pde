PShape item;
PFont font;
PImage bender;

void setup() {
  size(800,400);
  frameRate(25);
  smooth();
  item = loadShape("tomato.svg");
  font = loadFont("Arial-Black-48.vlw");
  bender = loadImage("bender.jpg");
}

boolean thrown = false;
boolean scored = true;
float ball_y = 0.0;
String scoreText = "";

void draw() {
  background(255);

  image(bender, width-150, height-240);

  stroke(0,255,0);
  strokeWeight(10);
  line(0,height-90, width, height-90);

  stroke(0);
  strokeWeight(1);
  fill(255,0,0);
  textFont(font,18);
  text(scoreText, 50,50);

  pushMatrix();
  translate(width/2,height/2);
  line(0,0,0,50);
  line(0,50,-30,100);
  line(0,50,30,100);
  line(0,0,0,-10);
  fill(255);
  ellipse(0,-30,40,40);
  rotate((mouseX/(float)width)*PI/2);
  line(0,0,0,-40);
  rotate(-(mouseX/(float)width)*PI);
  line(0,0,0,-40);
  popMatrix();  

  if(thrown) {
    ball_y += 10.0;
    pushMatrix();
    translate(ball_y,0);
    translate(width/2,height/2);
    rotate((mouseX/(float)width)*PI/2);
    shape(item,-10,-60,30,30);
    popMatrix();
  }

  if(mouseX > (3*width/4)) {
    scored = true;
  } else {
    scored = false;
  }

  if(ball_y > width/2) {
    if(scored) {
      scoreText = "SCORED!!!!!!!!!!";
    } else {
      scoreText = "OH GOD, THIS SHOULD BE EASY MAN";
    }
    ball_y = 0;
    thrown = false;
  }
}

void mousePressed() {
  if (thrown == false) {
    thrown = true;
  }
}
