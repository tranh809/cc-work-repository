int y = 100;
int x = 250;

void setup() {
  size(500, 500);  
  strokeWeight(3);
  frameRate(20);
}

void draw() { 
  background(0);   
  for (int i = 0; i < width; i++) {
    float r = random(255);
    stroke(r);
    line(i, 0, i, height);
  }
  stroke(255,0,0);
  y = y - 1; 
  x = x + 1;
  if (y < 0) { 
    y = height; 
  } 
  if (x > height) {
    x = 0;
  }
  line(0, y, width, y);
  line(0, x, width, x);
  if (y == height) {
    println ("done drawing");
  }
} 