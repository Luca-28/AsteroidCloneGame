PImage Background;      //Sprites
PImage Spaceship;
PImage Attack;

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
float AttackX = -100;  //Defines the position of the player attack
float AttackY = -100;;
float AttackSpeedX;
float AttackSpeedY;


void setup(){
  fullScreen();
  PlayerX = width/2;
  PlayerY = height/2;
  
  frameRate(120);
  
  Background = loadImage("Background.png");
  Spaceship = loadImage("Spaceship_Large.png");
  Attack = loadImage("Attack_Large.png");
  
  rectMode(CENTER);
  imageMode(CENTER);
  println("Setup complete");
}

void draw(){
  PlayerAngle = atan2(mouseY - PlayerY, mouseX - PlayerX)* 180/ PI;
  //println("Angle = " + PlayerAngle);
  
  clear();
  image(Background,width/2,height/2);
  
  pushMatrix();
  translate(PlayerX,PlayerY);  //Rotates the player to follow the mouseposition
  rotate(radians(PlayerAngle+90));
  fill(200);
  //scale(10);
  image(Spaceship,0,0);  //Draws the player
  popMatrix();
  
  image(Attack,AttackX,AttackY); //Draws the attack
  
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
