//LINK TO IMAGE https://mdash.mmlafleur.com/15-josef-albers-homage-to-the-square/
//https://mdash.mmlafleur.com/wp-content/uploads/2013/09/29182659/1a1.jpg
  
  void setup(){
  size(1000, 1000);
}

void draw() {
background(150); 


PVector BackGroundSquare = new PVector (0, 0);
PVector MiddleSquare = new PVector (250,329);
PVector SmallSquare = new PVector (383,585);

//Colors for Squares
color blue = #3282BE;
color DarkRed = #C13400;
color BrightRed = #F33900;

//BACKGROUND SQUARE
noStroke();
fill(blue);
rect(BackGroundSquare.x, BackGroundSquare.y, 1000, 1000); 

//Middle Square
noStroke();
fill(DarkRed);
rect(MiddleSquare.x, MiddleSquare.y, 550, 550);

//Small Square
noStroke();
fill(BrightRed);
rect(SmallSquare.x, SmallSquare.y, 250, 250);

  // this saves the canvas on the first frame
  // so we can get a clean image of the output easily
  if (frameCount == 1) {
    String filename = "Shapes and Colors";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");

}
