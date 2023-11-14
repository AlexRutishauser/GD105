//I Love Froot Loops (Shoutout to Sam The Toucan, This One's For you)
color red = #FF0000;

void setup() {
  size(1024, 1024);
  rectMode(CENTER);
}

void draw() {
  background(0);
  noFill();
  stroke(red);
  strokeWeight(10);


  for (int i = 0; i < 52.5; i++) {
    translate(48, 48);
    //1st section
    square(-107, 0, 75);
    square(-9, 0, 75);
    ////2nd section
    //square(249, 0, 75);
    //square(347, 0, 75);
    ////3rd Section
    //square(-389, 0, 75);
    //square(-487, 0, 75);

    ////4th Section
    //square(-847, 0, 75);
    //square(-749, 0, 75);

    ////5th Section
    //square(600, 0, 75);
    //square(698, 0, 75);
  }
}
