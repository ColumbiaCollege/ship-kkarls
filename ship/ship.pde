//Karla Medina
float x = 0;
float y = 0;
float easing = 0.5;

//screen setup with background
//runs once
void setup() { 
size(400, 500);
background(50, 182, 250);
noStroke();
}

void draw() {
  background(50, 182, 250);
  noStroke();
  fill(255);
  rect(0, 0, 500, 95);
  
  if ( y < 95) {// i want my submarine to stay under water 
   y *= 2; //couldn't figure out how else to do it
 } 
    
float bigX = mouseX;//calculates where submarine
float xx = bigX - x;//will move on the x axis when
x = x + xx * easing;//mouse moves over the screen

float bigY = mouseY;//declare the variables,
float yy = bigY - y;//assing, then use.
 y = y + yy * easing;//calculates the y axis movement

submarine(x - 30 , y - 30);//submarine will move a bit behind the mouse
 
}
void submarine (float x, float y) {
fill(247, 97, 27); 
ellipse(x, y, 60, 30);//main sub
rect(x + 10, y - 25, 10, 20);//top thingy
rect(x + 5 , y - 25, 15, 5);//horizontal to the top rect

fill(0);
ellipse(x - 15, y , 8, 8);//black windows 
ellipse(x , y, 8, 8);//from left 
ellipse(x + 15 , y, 8, 8);//to right

}
