// Name: Michael Martin
// Date: 3.15.2018
// file: circular.java
// Assignment: Bouncing Ball
/*
This assignment , 
you will expand on the Processing code we worked on Tuesday of Week 7 ( see slack).  
Instead of bouncing a square, change the shape into a circle.  
Use the ellipse command - https://processing.org/reference/ellipse_.html 
where you specify your x,y for the center and the width and height of the ellipise 
( for a circle they are the same). 
Also have an additional key event where when you touch this key, it toggles a color.

Put your code in the github classroom repository :   
https://classroom.github.com/a/WdAsVfS3 .  
Five points will be taken off if your code is not submitted in this manner.

*/

int plotX1;
int plotX2;
int plotY1;
int plotY2;
int xIncrement = 20;
int yIncrement = 10;
boolean atEnd = false;

/*
void setup(){
  size(720,450);
  ellipse(10, 20, 33, 33);
  
  
}
*/

void setup1() {
  size(720,450);
  plotX1 = 10;
  plotY1 = 20;
  plotX2 = 200;
  plotY2 = 120; 
}



void draw() {
  background(0xFFFFFF);
  stroke(0);
  fill(150);
  ellipse(10, 20, 33, 33);

  
  findBound();
  rectMode(CORNERS);
  
  if ( atEnd == false) {
    // Moving down to the right
    plotX1 = xIncrement + plotX1;
    plotX2 = xIncrement + plotX2;
    plotY1 = yIncrement + plotY1;
    plotY2 = yIncrement + plotY2;
    rect(plotX1, plotY1, plotX2, plotY2);
  } else {
    // Moving up and to the left 
    plotX1 = plotX1 - xIncrement;
    plotX2 = plotX2 - xIncrement;
    plotY1 = plotY1 - yIncrement;
    plotY2 = plotY2 - yIncrement;
    rect(plotX1, plotY1, plotX2, plotY2);
  }
  
}
void mousePressed() {
   if ( mouseX > plotX1 && mouseX < plotX2 && mouseY < plotY2 && mouseY > plotY1) {
      if ( atEnd == true) {
         atEnd = false; 
      }else {
         atEnd = true; 
      }
   }
  
  
}
void keyPressed() {
  
   if (key == 'j') {
     xIncrement -= 2; // xIncrement = xIncrement - 1 
     yIncrement -= 1;
   }else if (key == 'k') {
     xIncrement += 2;
     yIncrement += 1;
   }
  
}
void findBound() {
  if (plotX2 > 720 || plotY2 > 450) {
       atEnd = true; // switch direction, go up to the left
       return;
  }
  
  if ( plotX1 < 0 || plotY1 < 0 ) {
    atEnd = false;  // switch directions to down to the right
    return;
  }
  
}

// Color = new Color(r, g, b);

/*
void paint(Graphics g){
  super.paint(g)
  Circle1.draw(g);
  
  // setColor(Color.RED);
  
  
}
*/