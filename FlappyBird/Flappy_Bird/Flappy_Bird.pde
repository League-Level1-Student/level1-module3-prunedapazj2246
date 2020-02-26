
int x=25;
  int y =50;
  int gravity =1;
  int birdYVelocity = 30;
void setup(){
  size(1000,1000);
  
}
void draw(){
  
  background(#0EA1E8);
  fill(#F5E907);
  stroke(#000000);
  ellipse(x,y,15,15);
  x+=1;
  y+=1;
  
}
void mousePressed(){
  y-=birdYVelocity;
}
