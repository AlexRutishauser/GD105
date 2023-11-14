//optical illusion test code

void setup() {
  size(500, 500);
}

// (black background white lines)
void draw() {
  background(0);
  stroke(255);

  //Borders
  strokeWeight(10);
  line(495, 250, 250, 495); //bottom right
  line(495, 250, 250, 5); //top right
  line(5, 250, 250, 5); //top left
  line(250, 495, 5, 250); //bottom left

  //lines for top left porion
  strokeWeight(5);
  PVector TopPoint  = new PVector(0, 0);
  PVector BottomPoint  = new PVector(122, 129);
  
  //TOP LEFT QUADRANT
 
 //Middle Line
  line(BottomPoint.x, BottomPoint.y, TopPoint.x, TopPoint.y);
  
  //Right Spread From Middle 
  line(BottomPoint.x, BottomPoint.y, TopPoint.x + 50, TopPoint.y);
  line(BottomPoint.x, BottomPoint.y, TopPoint.x + 100, TopPoint.y);
  line(BottomPoint.x, BottomPoint.y, TopPoint.x + 150, TopPoint.y);
  line(BottomPoint.x, BottomPoint.y, TopPoint.x + 200, TopPoint.y);
  
  //Left spread from middle
   line(BottomPoint.x, BottomPoint.y, TopPoint.x, TopPoint.y + 50);
   line(BottomPoint.x, BottomPoint.y, TopPoint.x, TopPoint.y + 100);
   line(BottomPoint.x, BottomPoint.y, TopPoint.x, TopPoint.y + 150);
   line(BottomPoint.x, BottomPoint.y, TopPoint.x, TopPoint.y + 200);

//TOP RIGHT QUADRANT
     
     //Middle Line
      line(BottomPoint.x + 250, BottomPoint.y, TopPoint.x + 500, TopPoint.y);
      
      //LeftSpread
      line(BottomPoint.x + 250, BottomPoint.y, TopPoint.x + 300, TopPoint.y);
      line(BottomPoint.x + 250, BottomPoint.y, TopPoint.x + 350, TopPoint.y);
      line(BottomPoint.x + 250, BottomPoint.y, TopPoint.x + 400, TopPoint.y);
      line(BottomPoint.x + 250, BottomPoint.y, TopPoint.x + 450, TopPoint.y);

      //Right Spread
            line(BottomPoint.x + 250, BottomPoint.y, TopPoint.x + 500, TopPoint.y + 50);
             line(BottomPoint.x + 250, BottomPoint.y, TopPoint.x + 500, TopPoint.y + 100);
             line(BottomPoint.x + 250, BottomPoint.y, TopPoint.x + 500, TopPoint.y + 150);
             line(BottomPoint.x + 250, BottomPoint.y, TopPoint.x + 500, TopPoint.y + 200);


//BOTTOM LEFT QUADRANT

//Middle Line
  line(BottomPoint.x , BottomPoint.y + 250, TopPoint.x , TopPoint.y + 500);

//Spread to Left
  line(BottomPoint.x , BottomPoint.y + 250, TopPoint.x , TopPoint.y + 450);
  line(BottomPoint.x , BottomPoint.y + 250, TopPoint.x , TopPoint.y + 400);
  line(BottomPoint.x , BottomPoint.y + 250, TopPoint.x , TopPoint.y + 350);
  line(BottomPoint.x , BottomPoint.y + 250, TopPoint.x , TopPoint.y + 300);


//Spread to Right
    line(BottomPoint.x +1 , BottomPoint.y + 250, TopPoint.x + 50, TopPoint.y + 500);
    line(BottomPoint.x +1 , BottomPoint.y + 250, TopPoint.x + 100, TopPoint.y + 500);
    line(BottomPoint.x +1 , BottomPoint.y + 250, TopPoint.x + 150, TopPoint.y + 500);
    line(BottomPoint.x +1 , BottomPoint.y + 250, TopPoint.x + 200, TopPoint.y + 500);

  
  
  //BOTTOM RIGHT QUADRANT
  
  //Middle Line
    line(BottomPoint.x + 250, BottomPoint.y +250 , TopPoint.x + 500 , TopPoint.y + 500);

  //Spread To Right
      line(BottomPoint.x + 250, BottomPoint.y +250 , TopPoint.x + 500 , TopPoint.y + 450);
      line(BottomPoint.x + 250, BottomPoint.y +250 , TopPoint.x + 500 , TopPoint.y + 400);
      line(BottomPoint.x + 250, BottomPoint.y +250 , TopPoint.x + 500 , TopPoint.y + 350);
      line(BottomPoint.x + 250, BottomPoint.y +250 , TopPoint.x + 500 , TopPoint.y + 300);
 
  //Spread To Left
        line(BottomPoint.x + 250, BottomPoint.y +250 , TopPoint.x + 450 , TopPoint.y + 500);
        line(BottomPoint.x + 250, BottomPoint.y +250 , TopPoint.x + 400 , TopPoint.y + 500);
        line(BottomPoint.x + 250, BottomPoint.y +250 , TopPoint.x + 350 , TopPoint.y + 500);
        line(BottomPoint.x + 250, BottomPoint.y +250 , TopPoint.x + 300 , TopPoint.y + 500);

  // Squares Within Border
  
  //1st Square (medium)
    line(BottomPoint.x + 290, BottomPoint.y + 115, TopPoint.x + 250, TopPoint.y + 90);
    line(BottomPoint.x + -25, BottomPoint.y + 115, TopPoint.x + 250, TopPoint.y + 90);
    line(BottomPoint.x + -25, BottomPoint.y + 115, TopPoint.x + 250, TopPoint.y + 390);
    line(BottomPoint.x + 290, BottomPoint.y + 115, TopPoint.x + 250, TopPoint.y + 390);

  // 2nd Square (small)
      line(BottomPoint.x + 65, BottomPoint.y + 115, TopPoint.x + 250, TopPoint.y + 305);
      line(BottomPoint.x + 185, BottomPoint.y + 115, TopPoint.x + 250, TopPoint.y + 305);
      line(BottomPoint.x + 130, BottomPoint.y + 45, TopPoint.x + 310, TopPoint.y + 241);
      line(BottomPoint.x + 65, BottomPoint.y + 115, TopPoint.x + 250, TopPoint.y + 175);


  
  
  
  // this saves the canvas on the first frame
  // so we can get a clean image of the output easily
  if (frameCount == 1) {
    String filename = "Lines And Points Drawing";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
}
