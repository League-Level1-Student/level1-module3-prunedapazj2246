
int birdX=100;
boolean end= false;
  int birdY =50;
  int gravity =1;
  int birdYVelocity = 50;
  int pipeX = 1000;
  int upperPipeHeight = 350;
  int lowerPipeHeight = 500;
  int pipeGap = 150;
  int lowerY = 500;
  int score =0;
void setup(){
  size(1000,1000);
  
}
void draw(){
  background(#0EA1E8);
  birdScore();
  fill(#000000);
  rect(0,975,1000,50);
    teleportPipe();
  fill(#38FF03);
  rect(pipeX,0,50,upperPipeHeight);
  rect(pipeX,lowerY,50,lowerPipeHeight);
  fill(#F5E907);
  stroke(#000000);
  ellipse(birdX,birdY,30,30);

 pipeX -=2;
  birdY+=2;
//intersectsPipes();
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
  upperPipeHeight =(int) random(200, 800);
   
     lowerY = pipeGap + upperPipeHeight;
 lowerPipeHeight = 1000 - lowerY;
 } 
}
void intersectsPipes() {
     if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+50)){
           end=true;}
     else if (birdY>lowerPipeHeight && birdX > pipeX && birdX < (pipeX+50)) {
          end =true; }
       else if(birdY >=975){
        end= true; 
       }
     else { end = false; }
}


void birdScore(){
 text("Score: " + score, 50, 50);
  if( birdX== pipeX +50  && birdY > upperPipeHeight && birdY < lowerPipeHeight){
   score+=1;
   
 }
 
}
