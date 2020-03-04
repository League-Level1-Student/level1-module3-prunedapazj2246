
int birdX=100;
boolean end= false;
  int birdY =50;
  int gravity =1;
  int birdYVelocity = 30;
  int pipeX = 500;
  int upperPipeHeight;
  int lowerPipeHeight;
  int pipeGap;
  int lowerY;
void setup(){
  size(500,500);
  
}
void draw(){
  
  background(#0EA1E8);
  fill(#000000);
  rect(0,475,500,25);
  fill(#38FF03);
  rect(pipeX,0,50,upperPipeHeight);
  fill(#38FF03);
  rect(pipeX,lowerY,50,lowerPipeHeight);
  fill(#F5E907);
  stroke(#000000);
  ellipse(birdX,birdY,15,15);
  teleportPipe();
 pipeX -=1;
  birdY+=1;
intersectsPipes();
if (end ==true){
  System.exit(0);
}
}
void mousePressed(){
  birdY-=birdYVelocity;
}

void teleportPipe(){
 if(pipeX==-50){
  pipeX =500;
  upperPipeHeight =(int) random(100, 400);
   lowerPipeHeight =(int) random(100, 400);
     lowerY = pipeGap + upperPipeHeight;
 pipeGap = 75;
 }
}
void intersectsPipes() {
     if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+50)){
           end=true;}
     else if (birdY>lowerPipeHeight && birdX > pipeX && birdX < (pipeX+50)) {
          end =true; }
       else if(birdY >=500){
        end= true; 
       }
     else { end = false; }
}
