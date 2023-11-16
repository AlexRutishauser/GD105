PImage discord;
PGraphics mask;

void setup() {
  size(1024, 1024);
  discord = loadImage("discord.png");
  discord.resize(256, 256);
  mask = createGraphics(width, height);
}

void draw() {
  background(255);
  image(discord, 512 + cos(frameCount * 0.05) * 256, 512 + sin(frameCount * 0.05) * 256);
  mask.beginDraw();
  mask.background(0);
  mask.fill(255);
  mask.circle(512, 512, 512);
  mask.endDraw();

  if (frameCount == 1) {
    mask.get().save("mask.png");
  }
}
