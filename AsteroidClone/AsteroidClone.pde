PImage Background;      //Sprites


float PlayerX;  //Used under 'PlayerMovement' to figure out how the player moves
float PlayerY;
float PlayerSpeedX = 0;
float PlayerSpeedY = 0;
boolean PlayerRight = false;
boolean PlayerDown = false;
boolean PlayerLeft = false;
boolean PlayerUp = false;

float PlayerAngle;
boolean AttackActive = false;
float AttackX;  //Defines the position of the player attack
float AttackY;
float AttackSpeedX;
float AttackSpeedY;


void setup(){
  fullScreen();
  PlayerX = width/2;
  PlayerY = height/2;
  
  frameRate(120);
  
  Background = loadImage("Background.png");
  println("Background image loaded");
  
  rectMode(CENTER);
  println("Setup complete");
}

void draw(){
  PlayerAngle = atan2(mouseY - PlayerY, mouseX - PlayerX)* 180/ PI;
  //println("Angle = " + PlayerAngle);
  
  clear();
  image(Background,0,0);
  
  pushMatrix();
  translate(PlayerX,PlayerY);  //Rotates the player to follow the mouseposition
  rotate(radians(PlayerAngle));
  fill(200);
  rect(0,0,50,50);  //Draws the player
  popMatrix();
  
  circle(AttackX,AttackY,20);
  
  PlayerMovement();
  
  AttackX += AttackSpeedX;
  AttackY += AttackSpeedY; 
  
  AsteroidHitDetection();
  AsteroidMovement();
}

void keyPressed(){
  PlayerAccelerate();
  if(key == ' '){
    PlayerAttackAction();
  }
}

void keyCode(){
  PlayerAccelerate();
}

void keyReleased(){
 PlayerMoveCheck();
}
