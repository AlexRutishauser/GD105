//Let's Flip Some Coins Shall We?
color red = #FF0000;
color blue = #0000FF;
color green = #008000;
color yellow = #FFFF00;
color orange = #FF7518;

boolean Circles;
boolean Squares;
boolean Spooky;
boolean Squares2;

void setup() {
  size(1024, 1024);

  //test shapes
  Circles = random(1) < 0.30;
  println("Circles", Circles);

  Squares = random(1) < 0.35;
  println("Squares", Squares);

  Spooky = random(1) < 0.40;
  println("Spooky", Spooky);

  Squares2 = random(1) < 0.45;
  println("Squares2", Squares2);


  Circles = true;
  Squares = false;
  Spooky = true;
  Squares2 = true;
}

void draw() {
  background(125);

  //Circles Section
  if (Circles) {
    background(yellow);
    noStroke();
    fill(red);
    circle(240, 250, 450);
    fill(blue);
    circle(240, 250, 400);
    fill(green);
    circle(240, 250, 350);
    fill(red);
    circle(240, 250, 300);
    fill(blue);
    circle(240, 250, 200);
    fill(green);
    circle(240, 250, 250);
    fill(red);
    circle(240, 250, 200);
    fill(blue);
    circle(240, 250, 150);
    fill(green);
    circle(240, 250, 100);
    fill(red);
    circle(240, 250, 50);
  } else {
    background(green);
    noStroke();
    fill(blue);
    circle(240, 250, 450);
    fill(yellow);
    circle(240, 250, 400);
    fill(red);
    circle(240, 250, 350);
    fill(blue);
    circle(240, 250, 300);
    fill(yellow);
    circle(240, 250, 250);
    fill(red);
    circle(240, 250, 200);
    fill(blue);
    circle(240, 250, 150);
    fill(yellow);
    circle(240, 250, 100);
    fill(red);
    circle(240, 250, 50);
  }

  //squares section
  if (Squares) {
    noStroke();
    fill(red);
    square(500, 30, 450);
    fill(0);
    square(575, 80, 400);
    fill(red);
    square(650, 130, 350);
    fill(0);
    square(720, 180, 300);
  } else if (Circles) {
    noStroke();
    fill(red);
    circle(240, 250, 450);
    fill(yellow);
    circle(240, 250, 400);
    fill(blue);
    circle(240, 250, 350);
    fill(red);
    circle(240, 250, 300);
    fill(yellow);
    circle(240, 250, 250);
    fill(blue);
    circle(240, 250, 200);
    fill(red);
    circle(240, 250, 150);
    fill(yellow);
    circle(240, 250, 100);
    fill(blue);
    circle(240, 250, 50);
  } else {
    noStroke();
    fill(blue);
    square(500, 30, 450);
    fill(red);
    square(575, 80, 400);
    fill(blue);
    square(650, 130, 350);
    fill(red);
    square(720, 180, 300);
  }

  //spooky section
  if (Spooky) {
    noStroke();
    scale(0.45);
    translate(-49, 1240);
    fill(0);
    //eyes
    triangle(120, 400, 224, 18, 349, 395);
    translate(500, 0);
    triangle(120, 400, 224, 18, 349, 395);
    //nose
    triangle(120, 435, 25, 660, -100, 440);
    //mouth
    rect(-373, 720, 793, 154, 0);
    fill(orange);
    square(-267, 720, 75);
    square(184, 721, 75);
    square(-20, 802, 75);
    //Happy Halloween!
    fill(0);
    textSize(64);
    text("Happy Halloween!", -218, 982);
  } else {
    noStroke();
    fill(orange);
    scale(0.45);
    translate(-49, 1240);
    //eyes
    triangle(120, 400, 224, 18, 349, 395);
    translate(500, 0);
    triangle(120, 400, 224, 18, 349, 395);
    //nose
    triangle(120, 435, 25, 660, -100, 440);
    //mouth
    rect(-373, 720, 793, 154, 0);
    fill(0);
    square(-267, 720, 75);
    square(184, 721, 75);
    square(-20, 802, 75);
    //Happy Halloween!
    fill(orange);
    textSize(65);
    text("Happy Halloween!", -218, 982);
  }

  //2nd Squares Section
  if (Squares2) {
    fill(blue);
    square(725, -25, 950);
    fill(red);
    square(800, 55, 800);
    fill(blue);
    square(875, 128, 650);
    fill(red);
    square(950, 209, 500);
    fill(blue);
    square(1025, 285, 350);
  } else {
    noStroke();
    fill(255);
    square(725, -25, 950);
    fill(0);
    square(800, 55, 800);
    fill(255);
    square(875, 128, 650);
    fill(0);
    square(950, 209, 500);
    fill(255);
    square(1025, 285, 350);
  }
  //Saving Images
  if (frameCount == 1) {
    String name = "";

    if (Circles) {
      name += "1";
    } else {
      name += "0";
    }

    if (Squares) {
      name += "2";
    } else if (Circles) {
      name += "3";
    } else {
      name += "4";
    }

    if (Spooky) {
      name += "5";
    } else {
      name += "6";
    }

    if (Squares2) {
      name += "7";
    } else {
      name += "8";
    }

    save(name + ".png");
    println("saved as" + name + ".png");
  }
}
