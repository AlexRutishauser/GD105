//Shoutout to Array From Black Ops 1 (Great Game BTW but 2 is better IMO)

//Inspiration for this Project: https://www.artsy.net/artwork/luis-tomasello-s-slash-t-1-rosa
//Color Gradient is Pleasant for this piece

int numShape = 75;
float[] sizes = new float[numShape];
color[] colors = new color[numShape];
PVector[] shape = new PVector[numShape];
PVector[] shape2 = new PVector[numShape];
color[] colorPick = {#FFC0CB, #e75480, #FFFFFF};


void setup() {
  size(1024, 1024);
  noStroke();
  rectMode(CENTER);

  for (int i = 0; i < numShape; i++) {
    sizes[i] = 100;
     shape[i] = new PVector ( random(width), random(height) );
   float rFloat = random(colorPick.length);
     int randomIndex = (int)rFloat;
      colors[i] = colorPick [randomIndex]; 
  }
}

void draw() {
  background (150);
    translate(512,0);
  rotate(0.75);
  for (int i = 0; i < numShape; i++) {
    fill(colors[i]);
    square(shape[i].x, shape[i].y, sizes[i]);
  }
}
