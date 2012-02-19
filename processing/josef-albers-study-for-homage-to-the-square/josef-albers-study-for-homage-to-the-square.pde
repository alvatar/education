/*
 * Painting reverse-engineering:
 * Study for homage to the square, Josef Albers
 *
 * for the Processing environment
 * Author: Alvaro Castro-Castilla
 * Date: 8 November 2010
 */
 
 color[] colors = { #fea000, #ee5f00, #e33711 };
 
 void drawColorSurfaceProportional(float proportion, color surfColor, int recursionNumber) {
   fill(surfColor);
   noStroke();
   rectMode(CENTER);
   rect(width / 2, height  / 2 + recursionNumber * recursionNumber * height  / 25.0, width * proportion, height * proportion);
   
   if( recursionNumber < colors.length-1 ) {
     recursionNumber++;
     drawColorSurfaceProportional( proportion / (0.22 + recursionNumber ), colors[recursionNumber], recursionNumber );
   }
 }
 
 void setup() {
   size(400,400);
   background(252);
 }
 
 void draw() {
   drawColorSurfaceProportional(1.0, colors[0], 0);
 }
