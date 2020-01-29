//make basic settings
void setup() {
  size(400,400);
  background(0);
  frameRate(50);
}

//--------------------------------------------------------------------------------
//draw ART?! in creative random ways, defining the function randomText to show letters at a random position and to make the color and transparency of letters and lines interactive

void randomText(String letter) {
  
    //random display of letters, sizes change with mouseY coordinate
    text(letter, random(-50, 400), random(-100, 400));
    textSize(random(20,mouseY));
    
    //mouse movement changes color
    if (mouseY <= 255 && mouseY <= 255) {
      fill(mouseX, mouseY);
    } else {
      fill(random(255), random(255));
    }
   
   //relate color and key pressing
    if (keyPressed == true) {
      
      if (keyCode == RIGHT) {
        fill(mouseX, 0, mouseY);
      }
      else if (keyCode == LEFT) {
        fill(0, mouseX, mouseY);
      }
    } 
//----------------------------------------------------------------------------------    
    //make rectangles (create a frame)
    rect(0, 0, 400, 50);
    rect(0, 350, 400, 50);
    strokeWeight(5);
    
    // draw random top and bottom lines
    for (int x=0; x<401; x+=5) {
      line(x, 0, x+2, random(50));
      line(x, random(350,400), x, x+400);
    }
    
    //change picture when mouse is pressed
    if (mousePressed) {
      background(0);  
      textSize(50);
      fill(255);
      text("IS THIS ART?!", 50, 200);
    }   
  }   
//-------------------------------------------------------------------------------------  
//call the function with the letters of "ART?!"  
void draw() { 
  randomText("A");
  randomText("R");
  randomText("T");
  randomText("?");
  randomText("!");
}  
