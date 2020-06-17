float x,y;
void setup(){
  fullScreen();
  background(255);
  fill(#44DE1B);
  x =0; 
  y =0;
}
void drawpoint(){
  strokeWeight(2);
  stroke(#44DE1B);
  float px = map(x, -2.10, 2.68, width,0);
  float py = map(y, -0.4, 10, height,0);
  point(px,py);
}
void nextpoint(){
  float r = random(1);
  float nextX,nextY;
  if(r < 0.02){
    nextX= 0;
    nextY = 0.25*y-0.4;
  }
  else if(r < 0.84){
    nextX = 0.95*x + 0.005*y - 0.002;
    nextY = -0.005*x + 0.93*y + 0.5;
  }
  else if(r < 0.91){
    nextX = 0.035*x - 0.2*y - 0.09;
    nextY = 0.16 *x + 0.04 *y + 0.02;
  }
  else{
    nextX = -0.04 *x + 0.2 *y +0.083;
    nextY = 0.16 *x + 0.04 *y + 0.12;
  }
  x = nextX;
  y = nextY;
}
void draw(){
  for(int i= 0; i < 200; ++i){
    drawpoint();
    nextpoint();
  }
}
