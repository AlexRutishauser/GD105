//Screensaver Project (Gaming Theme!)
//Goal is to make a Playstation Screensaver (Sorry Xbox fanboys :( )

//Pvector for Motion
PVector circularMotion;

//Colors for Shapes
color Green = (#38DEC8);
color Red = (#F06E6C);
color Blue = (#9BADE4);
color Pink = (#D591BD);

void setup() {
  size(1024, 1024);
  circularMotion = new PVector(0, 0);
  fullScreen();
}

void draw() {
  background(0);
  noFill();
   strokeWeight(20);
  float animationSpeed = .001; 
  translate(width/2, height/2);

//Square Symbol
  stroke(Pink);
  rectMode(CENTER);
  circularMotion.x = cos(frameCount * TAU * animationSpeed + TAU * 0.5) * 256;
  circularMotion.y = sin(frameCount * TAU * animationSpeed + TAU * 0.5) * 256;
  square(circularMotion.x, circularMotion.y, 220);

//circle symbol
  stroke(Red);
  circularMotion.x = cos(frameCount * TAU * animationSpeed) * 256;
  circularMotion.y = sin(frameCount * TAU * animationSpeed) * 256;
  circle(circularMotion.x, circularMotion.y, 220);
 
//Cross
  stroke(Blue);
  resetMatrix(); 
  translate(width/2, height/2);
  circularMotion.x = cos(frameCount * TAU * animationSpeed + TAU * 0.25) * 256;
  circularMotion.y = sin(frameCount * TAU * animationSpeed + TAU * 0.25) * 256;
  translate(circularMotion.x, circularMotion.y);
  line(-100, -100, 100, 100);
  line(-100, 100, 100, -100);

//Triangle
  stroke(Green);
  resetMatrix();
  translate(width/2, height/2);
  circularMotion.x = cos(frameCount * TAU * animationSpeed + TAU * 0.75) * 256;
  circularMotion.y = sin(frameCount * TAU * animationSpeed + TAU * 0.75) * 256;
  translate(circularMotion.x, circularMotion.y);
  translate(-240,-230);
  triangle(120, 300, 232, 80, 344, 300);
  
 //You're Welcome Playstation Nation :) -Alex
  
}
