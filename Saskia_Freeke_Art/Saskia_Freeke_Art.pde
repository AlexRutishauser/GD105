//Geometric Shapes / 230828
//Link to Image: https://64.media.tumblr.com/9ddca62be4c80cf7d03c8155490228bc/9bef6c1cb634bc23-ab/s1280x1920/b00708d07c289bfdffbf98191dc55926ce4f9255.png

void setup() {
  size(1280, 1280);
}

void draw() {
  //colors that will be used
  color Black = (#000000);
  color DarkBlue = (#3C486B);
  color Purple = (#9376E0);
  color BrightBlue = (#0D1282);

  background(255);
  stroke(Black);
  strokeWeight(5);

//Square that Will be overlapped by Triangles
    stroke(DarkBlue);
    fill(DarkBlue);
      square(880, 775, 135);
      
  //We Will Begin With All the Triangles on the Canvas

  //Triangles With No Color Fill

  //Top Row of Triangles
  stroke(Black);
  translate(1401, 840);
  noFill();
  rotate(-3.14);

  triangle(120, 300, 232, 170, 344, 300);
  translate(225, 0);

  triangle(120, 300, 232, 170, 344, 300);
  translate(225, 0);

  triangle(120, 300, 232, 170, 344, 300);

  //overlap triangle in first row
  translate(-49, 36);
  triangle(120, 300, 232, 170, 344, 300);
  
 
  //Second Row of Triangles
  translate(-400, -272);
  noFill();

  triangle(120, 300, 232, 170, 344, 300);
  translate(225, 0);

  triangle(120, 300, 232, 170, 344, 300);
  translate(224, 0);

  triangle(120, 300, 232, 170, 344, 300);

  //Third Row Of Triangles
  translate(-451, -244);
  noFill();

  triangle(120, 300, 232, 170, 344, 300);
  translate(225, 0);

  triangle(120, 300, 232, 170, 344, 300);
  translate(225, 0);

  triangle(120, 300, 232, 170, 344, 300);

  //4th Row of Triangles (Off Image)
  translate(-451, -239);
  noFill();

  triangle(120, 300, 232, 170, 344, 300);
  translate(225, 0);

  triangle(120, 300, 232, 170, 344, 300);
  translate(225, 0);

  triangle(120, 300, 232, 170, 344, 300);

  //Big Rectangle to Cover Triangles in First Row
  fill(Black);
  rotate(0.00);
  translate(100, 100);
  rect(93, 675, 763, 242);

  //Black Triangle in Top Left
  translate(352, 1075);
  triangle(120, 300, 232, 170, 344, 300);

  //Black Triangle in Bottom Left
  translate(-10, -962);
  triangle(120, 300, 232, 170, 344, 300);


  //Black Triangle in Bottom Right
  translate(-945, 4);
  triangle(120, 300, 232, 170, 344, 300);

  //Triangle in Top Right
  translate(0, 960);
  triangle(120, 300, 232, 170, 344, 300);

  //Purple Triangle In Rectangle
  translate(725, -356);
  scale(0.59);
  fill(Purple);
  triangle(120, 300, 232, 170, 344, 300);

  //Blue Triangle in Rectangle
  noFill();
  strokeWeight(15);
  stroke(DarkBlue);
  translate(1118, 0);                    
  rotate(1.60);
  scale(0.54);
  triangle(120, 300, 232, 170, 344, 300);
 

  //Blue Triangle on Bottom
  noFill();
  strokeWeight(8);
  translate(-845, 2064);
  rotate(3.14);
  scale(1.70);
  triangle(120, 300, 232, 170, 344, 300);


  //Lines
  stroke(Black);
  strokeWeight(10);

  //Bottom Lines on Triangle
  line(411, 230, 230, 30);
    line(415, -200, 210, -375);

//Lines in Second Row Of Triangle
   line(-30, -180, -240, -350);
    line(-246, 58, -20, 250);

//Lines in Top Row of Triangles
  line(-800, -573, -567, -390);
  stroke(DarkBlue);
  line(-740, -255, -625, -135);//This is a dark blue line
  
  stroke(DarkBlue);
  line(-1425, -795, -3190, 775);//This is a dark blue line off canvas

stroke(BrightBlue);
  line(-1700, -100, -1493, 114);//This is a Blue Line outlier


//Circles Section

//Blue Circles
translate(-699,-371);
fill(DarkBlue);
stroke(DarkBlue);
circle(224, 184, 220);

translate(-25,-835);
circle(224, 184, 220);

translate(-890,0);
circle(224, 184, 220);

translate(0, 875);
circle(224, 184, 220);

//Black Circle
stroke(Black);
fill(Black);
translate(1200, -120);
circle(224, 184, 100);

//Purple Circle
stroke(Purple);
fill(Purple);
translate(-830, 215);
circle(224, 184, 60);


 
 //Square Section
  
//3 Black Squares (Left To Right)
stroke(Black);
  fill(Black);
    rotate(-0.03);
    translate(-90, 1143);
  square(120, 100, 220);
  
  translate(0, -432);
  square(120, 100, 220);
  
  translate(9, -471);
  square(120, 100, 220);
  
  
  //Purple Border Square in Rectangle
  stroke(Purple);
  strokeWeight(7);
  fill(Black);
  square(700, 965, 50);
  
  //Blue Squares On Top of Canvas (Left To Right)
  stroke(DarkBlue);
  fill(DarkBlue);
  square(-115, 1000, 220);
  square(0, 500, 220);
  square(-108, 95, 220);
    square(0, -415, 220);
    
    //Blue Squares On Middle Canvas (Left to Right)
      square(755, 980, 220);
      square(865, 500, 220);
      square(750, 45, 220);
      
      //Squares Off Canvas on Top
      stroke(Black);
      fill(Black);
        square(-795, 1050, 220);
        square(-795, 685, 220);
        square(-795, 315, 220);

      
     if (frameCount == 1) {
    String filename = "Shapes and Colors";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
}
