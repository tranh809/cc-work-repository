int startX = 0;
int startY = 0;
int endX = 500;
int endY = 0;
int a = 100;
int b = 250;

int spacing = 5;

int numberDrawn = 0;
int totalLines = 300;

void setup() {
  size(500, 500);
  background(0);
  println(spacing);
  line(startX, startY + spacing, endX, endY);
  spacing += 5;
}
void draw() {
  if (numberDrawn < totalLines) {
    line(
    startX, 
    startY + spacing, 
    endX,
    endY+ spacing
    );
    stroke(255);
    spacing += random(1,10);
    println("spacing: " + spacing);
    
    numberDrawn += 1;
    numberDrawn = numberDrawn + 1;
  } 
  
  else {
    spacing = 0;
    numberDrawn = 0;
  }
  if (numberDrawn == totalLines) {
  stroke(255,0,0);
  strokeWeight(5);
  line(250,0,250,500);
  a = a - 1;
  b = b + 1;
  if (a < 0) { 
    a = height; 
  } 
  if (b > height) {
    b = 0;
  }
  }
}