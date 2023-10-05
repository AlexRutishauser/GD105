//These will be the code images i will be using for the collage (Meme Dump Pretty Much, it won't make any sense but we're running with it :/)
PImage Yoshi;
PImage Dudes;
PImage Thumb;
PImage Patrick;

//Font I Will Use
PFont Comic;

void setup(){
  size(500, 500);
  Yoshi = loadImage("FatYoshi.png");
  Dudes = loadImage("Dudes Pointing at something.png");
  Thumb = loadImage("Thumb.png");
  Patrick = loadImage("Patrick.png");
  Comic = loadFont("ComicSansMS-Bold-48.vlw");
}
  
void draw() {
background(#0000f7);

//Circle Crossing out Yoshi
stroke(#ff0000);
strokeWeight(5);
circle(245, 200, 175);

//Yoshi 
scale(0.25);
image(Yoshi, 695, 480);

//cross on yoshi
strokeWeight(30);
line(755, 545, 1232, 1025);

//Dudes Pointing at Yoshi
image(Dudes, 0, 542);

//Thumbs Down Emoji
scale(1.30);
image(Thumb, 1073, 3);

//Patrick Star (Is Mayonaise sitll considered an instrument to this day?)
scale(0.65);
image(Patrick, -50, 127);

//Text On top
textFont(Comic, 165);
text("BIG YOSHI", 600, 200);
text("IS", 1548, 200);
text("CRINGE!", 783, 395);

//Text On Bottom 
text("DON'T BE", 807, 1811);
text("LIKE", 1042, 2014);
text("BIG YOSHI!", 780, 2258);

  if (frameCount == 1) {
    String filename = "Meme Collage";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }

}
