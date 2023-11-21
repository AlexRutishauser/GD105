//Dead Orbit is the best destiny faction, DONT @ ME
//GUARDIANS RISE UP
//HUNTERS WYA???

PImage orbit;
PImage turkey;
PGraphics mask;
color orange = #b6562a;
color red = #9c2f2f;
color yellow = #dbba33;
color brown = #633f21;
color darkBrown = #511f16;
PFont script;

void setup() {
  size(1024, 1024);
  //dead orbit setup
  orbit = loadImage("dead_orbit_faction_logo_by_whitewingedvalkyrie_d8aeno3-pre.png");
  orbit.resize(190, 190);
  orbit.filter(INVERT);

  //turkey setup for mask
  turkey = loadImage("rounded-turkey.png");
  turkey.resize(200, 200);
  script = loadFont("ScriptMTBold-175.vlw");
  mask = createGraphics(width, height);
}

void draw() {
  background(255);
  fill(0);

  //dead orbit logo moving up and down
  //left column
  circle(300, 500 + sin(frameCount * 0.07) * 350, 225);
  image(orbit, 205, 400 + sin(frameCount * 0.07) * 350);

  //right column
  circle(725, 500 + sin(frameCount * 0.04) * 625, 225);
  image(orbit, 630, 400 + sin(frameCount * 0.04) * 625);

  //squares on the canvas (Left to Right)
  for (int i = 0; i < 6; i++) {
    translate(0, 175);
    //square first column
    square(0, -175, 90);
    square(90, -85, 90);
    //second column
    square(420, -175, 90);
    square(512, -90, 90);
    //third column
    square(845, -175, 90);
    square(935, -90, 90);
  }

  //masking portion
  mask.beginDraw();
  mask.background(orange);
  mask.noStroke();
  mask.fill(red);
  mask.rect(0, 0, 1024, 205);
  mask.fill(brown);
  mask.rect(0, 205, 1024, 205);
  mask.fill(yellow);
  mask.rect(0, 410, 1024, 205);
  mask.fill(darkBrown);
  mask.rect(0, 615, 1024, 205);


  //Turkeys for mask layer
  for (int i = 0; i < 5; i++) {
    mask.translate(200, 0);
    mask.image(turkey, -195, 5);
    mask.image(turkey, -195, 415);
    mask.image(turkey, -195, 825);
  }

  //happy thanksgiving everyone!
  mask.resetMatrix();
  mask.textFont(script);
  mask.fill(0);
  mask.text("Happy", 225, 345);
  mask.text("Thanksgiving!", 5, 765);
  mask.endDraw();

  //save mask
  if (frameCount == 1) {
    mask.get().save("mask.png");
  }
}
