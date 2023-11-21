//Piece I'm Responding to: "the words we use are lovely" by J.P. Ward (1973)

//Sources
//https://www.themarginalian.org/2014/05/23/typewriter-art-laurence-king/
//https://www.rogerhorberry.com/laughed/the-words-we-use-are-lovely-by-j-p-ward-1973/
//Typewriter art : a modern anthology by Barrie Tullett (2014)

// Mechanical Keyboards >>>>> Old ass type writers lmao

//pvector for center of canvas
PVector middle  = new PVector(512, 512);

//Typewriter Font
PFont courier;

//String text for middle of canvas
String L = "Lovely";
String Y = "ylevoL";

void setup() {
  size(1024, 1024);
  courier = loadFont("CourierNewPS-BoldMT-48.vlw");
}

void draw() {
  background(255);
  noFill();
  fill(0);
  textFont(courier);
  textAlign(CENTER);
  textSize(34);
  translate(middle.x, middle.y);

  //text("The Words We Use Are L o v e l y".replace(' ', '\n'), 0, 75);
  for (int i = 0; i < 6; i++) {
    rotate(TAU /6.00);
    text("The Words We Use Are L o v e l y".replace(' ', '\n'), 0, 145);
  }


  //hexagon lovely pattern
  for (int a = 0; a < 6; a++) {
    rotate(TAU / 6.00);
    textSize(26);
    text(L, 2, -100);
    textSize(24);
    text(Y, 2, -80);
    textSize(22);
    text(L, 2, -60);
    textSize(20);
    text(Y, 2, -40);
    textSize(14);
    text(L, 2, -20);
    textSize(8);
    text(Y, 2, -10);
  }

  if (frameCount == 1) {
    String filename = "Typewriter Art Piece";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
  }
