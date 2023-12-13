//The Final Boss: It was fun while it lasted :(

////PROVIDE CREDIT FOR RESOURCES!!!!

//Brainstorm: Taxi Frenzy (Drive a taxi in a city without causing any accidents! If
//you hit someone or something you lose!)

PImage car, road, city, firetruck;
PVector taxi, fire;
float moveSpeed = 5;
boolean up, down;
int cityx, cityy;



void setup() {
  size(1024, 1024);
  taxi = new PVector (5, 700);
  fire = new PVector (900, random(550, 870));
  car = loadImage("taxi.png");
  firetruck = loadImage("firetruck.png");
  road = loadImage("roadTexture_72.png");
  city = loadImage("city.png");
  city.resize (1024, 525);
  noSmooth();
}

void draw() {

  //Loop Background
  image(city, cityx, cityy);
  image(city, cityx + width, cityy);
  cityx = cityx - 3; //Speed of Background
  if (cityx < -city.width) {
    cityx = 0;
  }


  //Road for taxi
  for (int i = 0; i < 3; i++) {
    image(road, i * 512, 512, width/2, height/2);
  }

//car obstacles

//firetruck
  image(firetruck, fire.x, fire.y, firetruck.width * 5, firetruck.height * 5);
 fire.x = fire.x - 10; //Speed of firetruck
  if (fire.x < -firetruck.width) {
    fire.x = -1024;
  }


//taxi (Main player)
  image(car, taxi.x, taxi.y, car.width * 5, car.height * 5);

  //Movement Mechanics & Constraints

  //range of y axis on road (550 to 870)

  //Upper Limit
  if (up && taxi.y > 550) {
    taxi.y -= moveSpeed;
  }

  //Lower Limit
  if (down && taxi.y < 870) {
    taxi.y += moveSpeed;
  }
}

//Movement Constraints
void keyPressed() {
  if (key == 'w' || key == 'W') {
    up = true;
  }

  if (key == 's' || key == 'S') {
    down = true;
  }
}

void keyReleased () {
  if (key == 'w' || key == 'W') {
    up = false;
  }

  if (key == 's' || key == 'S') {
    down = false;
  }
}
