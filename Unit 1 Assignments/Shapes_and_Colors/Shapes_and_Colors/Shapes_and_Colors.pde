//LINK TO IMAGE https://mdash.mmlafleur.com/15-josef-albers-homage-to-the-square/
//https://mdash.mmlafleur.com/wp-content/uploads/2013/09/29182659/1a1.jpg
  
  void setup(){
  size(534, 534);
}

void draw() {
background(150); 


PVector BackGroundSquare = new PVector (0, 0);
PVector MiddleSquare = new PVector (110,160);
PVector SmallSquare = new PVector (160,240);

//Colors for Squares
color blue = #3282BE;
color DarkRed = #C13400;
color BrightRed = #F33900;

//BACKGROUND SQUARE
noStroke();
fill(blue);
rect(BackGroundSquare.x, BackGroundSquare.y, 534, 534); 

//Middle Square
noStroke();
fill(DarkRed);
rect(MiddleSquare.x, MiddleSquare.y, 320, 320);

//Small Square
noStroke();
fill(BrightRed);
rect(SmallSquare.x, SmallSquare.y, 215, 215);


  if (frameCount == 1) {
    String filename = "Shapes and Colors";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");

  }
}
