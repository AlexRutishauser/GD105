//Piece I'm Responding to: "the words we use are lovely" by J.P. Ward (1973)
//(Have to find link to original art)

//https://www.themarginalian.org/2014/05/23/typewriter-art-laurence-king/
//https://www.rogerhorberry.com/laughed/the-words-we-use-are-lovely-by-j-p-ward-1973/
//Typewriter art : a modern anthology by Barrie Tullett (2014)

// Mechanical Keyboards >>>>> Old ass type writers lmao

PVector middle  = new PVector(512, 512);
PFont courier;


void setup() {
  size(1024, 1024);
  background(255);
  courier = loadFont("CourierNewPS-BoldMT-48.vlw");
  //String L = "Lovely";
//String Y = "ylevoL";
}

void draw() {
  noFill();
  //circle(512, 512, 100);
  fill(0);
  textFont(courier);
  textAlign(CENTER);
  textSize(30);
  translate(middle.x, middle.y);

  //text("The Words We Use Are L o v e l y".replace(' ', '\n'), 0, 75);
  for (int i = 0; i < 7; i++) {
    rotate(TAU /6.00);
    text("The Words We Use Are L o v e l y".replace(' ', '\n'), 0, 140);
  }

  for (int a = 0; a < 6; a++) {
    rotate(TAU / 6.00);
    textSize(25);
    text("Lovely", 2, -100);
        textSize(23);
    text("ylevoL", 2, -80);
        textSize(20);
text("Lovely", 2, -60);
    textSize(19);
text("ylevoL", 2, -40);
    textSize(14);
text("Lovely", 2, -20);
    textSize(8);
text("Lovely", 2, -10);

  }
  
  
}
