PImage photo, photo2, photo3;

int a = 255;

void setup() {
  size(940, 550);
  photo = loadImage("EndlessKaleidoscope10.png");
  photo2 = loadImage("EndlessKaleidoscope11.png");
  photo3 = loadImage("EndlessKaleidoscope3.png");
}

void draw() {
  background(0);
  tint (255,255); //prevents fade to black background
  image(photo2, 0,0);
  tint(255, a);
  if (mousePressed) {
    a-=1;
  } else {
    a+=1;
  }
  image(photo, 0, 0);
   tint(0, 100, 200,a/4);
  if (keyPressed) {
    if(key == ' ') {
      a-=1;
    } else {
      a+=1;
    }
      image(photo3, 0, 0);
  }
}