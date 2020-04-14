int frogX =400;
int frogY = 570;
boolean fro;
 //PImage b;
 //PImage carLeft;
 //PImage carRight;
 //PImage frog;
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
   //b = loadImage("froggerBackground.png");
    //    carLeft = loadImage("carLeft.png");
      //  carLeft.resize(160,100);
        //carRight = loadImage("carRight.png");
        //carRight.resize(160,100);
        //frog = loadImage("frog.png");
        //frog.resize(75,75);
}

void draw(){
  background(#051BFC);
     //background(b);
       // image (carLeft,250,360);
        //image (carRight,250, 210);
        //image (frog, 300, 530);
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
 car1.intersects(car1);
 if(fro == true){
  frogX=400;
  frogY =570;
}
  car2.intersects(car2);
  if(fro == true){
  frogX=400;
  frogY =570;
}
   car3.intersects(car3);
   if(fro == true){
  frogX=400;
  frogY =570;
}
    car4.intersects(car4);
    if(fro == true){
  frogX=400;
  frogY =570;
}
     car5.intersects(car5);
     if(fro == true){
  frogX=400;
  frogY =570;
}
      car6.intersects(car6);
      if(fro == true){
  frogX=400;
  frogY =570;
}
       car7.intersects(car7);
       if(fro == true){
  frogX=400;
  frogY =570;
}
        car8.intersects(car8);
if(fro == true){
  frogX=400;
  frogY =570;
}

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
   if
   (frogY > 600){
   frogY = 0;
   }
}
class car{
int carX;
int carY;
int carSize;
int carSpeed;
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
int getX(){
  
  return carX;
}
int getY(){
  return carY;
}
int getSize(){
  return carSize;
}
boolean intersects(car car) {
 if ((frogY > car.getY() && frogY < car.getY()+50) &&
                (frogX > car.getX() && frogX < car.getX()+car.getSize())) {
                  fro =true;
   return fro;
  }
 else  {
   fro = false;
  return fro;
 }
 
}
}
