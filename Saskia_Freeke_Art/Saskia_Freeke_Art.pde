//Geometric Shapes / 230828

void setup(){
  size(1280, 1280);
}

void draw(){
  //colors that will be used 
  color Black = (#000000);
  color DarkBlue = (#3C486B);
  color Purple = (#9376E0);
  color BrightBlue = (#0D1282);
  
  background(255);
  stroke(Black);
  strokeWeight(5);
  
  //We Will Begin With All the Triangles on the Canvas
  
  //Triangles With No Color Fill
   
   //Top Row of Triangles
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
translate(1118, 0);                    //CHECK YOUR WORK HERE (EVERYTHING IS BLUE)
rotate(1.60); 
scale(0.54);
triangle(120, 300, 232, 170, 344, 300);
;



//Blue Triangle on Bottom
noFill();
strokeWeight(11);
translate(-845, 2064);
rotate(3.14); 
scale(1.70);
triangle(120, 300, 232, 170, 344, 300);


//Lines 
stroke(Black); 
strokeWeight(10);

//Bottom Lines on Triangle
line(411, 230, 230, 30);
line(411, 231, 228, 33);

line(-740, -255, -625, -135);//This is a dark blue line

line(-800, -573, -567, -390);
line(-1490, -616, -2882, 774);//This is a dark blue line

line(-1650, -110, -1420, 125);//This is a Blue Line outlier

line(415, -200, 210, -375);
line(-246, 58, -20, 250);

//Square Section

//3 Squares off Canvas
translate(50, 50);
square(120, 100, 220);


}



  
   
