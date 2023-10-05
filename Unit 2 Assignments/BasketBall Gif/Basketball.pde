//Lets Play Some Basketball!
//C'mon and Slam and Welcome to the Jam (if Ykyk)
//Space Jam with MJ>>>>>> 

//Images that Will be used
PImage Hoop; 
PImage Ball;
PImage Arena;
PVector circularMotion;

void setup() {
  size(1024, 1024);
  Hoop = loadImage("Hoop.png");
  Ball = loadImage("Ball.png");
  Arena = loadImage("Arena.png");
  circularMotion = new PVector(0, 0);
  frameRate(50);
  
}

void draw() {
  
  //Arena Background
  background(Arena);
  text(frameCount, 10, 10);
 
  //Hoop Placement
  image(Hoop, 573, 89);
  
//Ball Placement
  translate(width/4.00, height/1.35);
  scale(0.35);
  float animationSpeed = 0.03;
  circularMotion.x = -320;
  circularMotion.y = sin(frameCount * animationSpeed * TAU) * 125;
  image(Ball, circularMotion.x, circularMotion.y);
 
  //save images
   saveFrame("frames/####.png");
   println("saved " + frameCount + ".png");
}
