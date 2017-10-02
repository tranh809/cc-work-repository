PImage p0, p1, p2, p3;
float t0, t1, t2 = 0;
boolean show0, show1, show2= false;
void setup(){
  size(940,540);
  p0 = loadImage("1.png");
  p1 = loadImage("2.png");
  p2 = loadImage("3.png");
  p3 = loadImage("4.png");
  background(p0);
}

void draw() {
  tint(255,255);
  image(p0,0,0);
  if(!show0){
    if(t0>0){
      t0-=1;
    }
    tint(255,t0);
    image(p1,0,0);
  }
  if(show0){
    if(t0<255){
      t0+=1;
    }
    tint(255,t0);
    image(p1,0,0);
  }
    if(!show1){
    if(t1>0){
      t1-=1;
    }
    tint(255,t1);
    image(p2,0,0);
  }
  if(show1){
    if(t1<255){
      t1+=1;
    }
    tint(255,t1);
    image(p2,0,0);
  }
   if(!show2){
    if(t2>0){
      t2-=1;
    }
    tint(255,t2);
    image(p3,0,0);
  }
  if(show2){
    if(t2<255){
      t2+=1;
    }
    tint(255,t2);
    image(p3,0,0);
  }   
}

void keyPressed(){
 if(key=='1'){
    show0 = true;
 }
 if(key=='2'){
   show1 = true;
 }
  if(key=='3'){
   show2 = true;
 }
}
void keyReleased(){
  if(key=='1'){
    show0 = false;
  }
  if(key=='2'){
    show1 = false;
  }
   if(key=='3'){
   show2 = false;
 }
}