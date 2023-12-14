//The Final Boss: It was fun while it lasted :(

//Assets provided by https://www.kenney.nl/assets

//Brainstorm: Taxi Frenzy (Drive a taxi in a city without causing any accidents! If
//you hit someone or something you lose!)

PImage car, road, city, firetruck, police, sedan, bus;
PVector taxi, fire, car1, car2, car3;
float moveSpeed = 5;
boolean up, down;
int cityx, cityy;



void setup() {
  size(1024, 1024);
  taxi = new PVector (5, 700);
  fire = new PVector ((random(1024, 2048)), random(550, 870));
  car1 = new PVector ((random(1024, 2048)), random(550, 870));
  car2 = new PVector ((random(1024, 2048)), random(550, 870));
  car3 = new PVector ((random(1024, 2048)), random(550, 870));


  car = loadImage("taxi.png");
  firetruck = loadImage("firetruck.png");
  road = loadImage("roadTexture_72.png");
  city = loadImage("city.png");
  sedan = loadImage("sedan_vintage.png");
  police = loadImage("police.png");
  bus = loadImage("bus_school.png");

  
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
  fire.x = fire.x - random (6, 8); //Speed 
  if (fire.x < -firetruck.width) {
    fire.x = random (1080, 2050);
  }

  //second car
image(sedan, car1.x, car1.y, sedan.width * 5, sedan.height * 5);
  car1.x = car1.x - random (6, 8); //Speed 
  if (car1.x < -sedan.width) {
    car1.x = random (1080, 2050);
  }
  
  //third car 
  image(police, car2.x, car2.y, police.width * 5, police.height * 5);
  car2.x = car2.x - 8; //Speed 
  if (car2.x < -police.width) {
    car2.x = random (1080, 2050);
  }
  
  //fourth car
  image(bus, car3.x, car3.y, bus.width * 5, bus.height * 5);
  car3.x = car3.x - random (6, 8); //Speed 
  if (car3.x < -bus.width) {
    car3.x = random (1080, 2050);
  }

  //taxi (Main player)
  image(car, taxi.x, taxi.y, car.width * 5, car.height * 5);


  //Movement Mechanics & Constraints

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
