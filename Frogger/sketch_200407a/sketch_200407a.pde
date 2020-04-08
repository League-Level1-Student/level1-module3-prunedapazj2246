int frogX =400;
int frogY = 570;
car car2 = new car(600,400,45, 6);
car car3 = new car(550,300,90,3);
car car1 = new car(100,400,45,6);
car car4 = new car(300,300,45,6);
car car5 = new car(700,200,45,6);
car car6 = new car(100,200,90,3);
car car7 = new car(500,100,45,6);
car car8 = new car(750,100,45,6);
void setup(){
  size(800,600);
}

void draw(){
  background(#FF5F03);
   car1.moveLeft();
  car1.display();
  car2.moveLeft();
  car2.display();
   car3.moveRight();
  car3.display();
   car4.moveRight();
  car4.display();
   car5.moveLeft();
  car5.display();
   car6.moveLeft();
  car6.display();
   car7.moveRight();
  car7.display();
   car8.moveRight();
 car8.display();
  fill(0,255,0);
  ellipse(frogX,frogY,30,30);
  canvas();
}
void keyPressed(){
  if( key == CODED){
  if(keyCode == UP){
  frogY-= 15;
  }
  else if(keyCode == DOWN){
  frogY+=15;
  }
  else if(keyCode == RIGHT){
  frogX+=15;
  }
  else if(keyCode == LEFT){
   frogX-=15;
  }
  }
 
}
void canvas(){
  if(frogX < 0){
   frogX = 800;
  } if(frogX >800){
  frogX=0;
  }
  if(frogY<0){
  frogY = 600;
  }
   if(frogY > 600){
   frogY = 0;
   }
}
class car{
  int carX =50;
  int carY =400;
  int carSize = 45;
  int carSpeed = 3;
  public car(int carX,int carY, int carSize, int carSpeed){
    this.carX = carX;
    this.carY =carY;
    this.carSize= carSize;
    this.carSpeed = carSpeed;
  }
  void display()
  {
    fill(0,255,0);
    rect(carX , carY, carSize , 20);
  }
  void moveLeft(){
   carX = carX - carSpeed;
   if(carX < 0){
     carX = 800;
  }
}
void moveRight(){
  carX = carX + carSpeed;
  if(carX >800){
   carX = 0; 
  }
}
void getX(){
  
}
void getY(){
  
}
void getSize(){
  
}
}
