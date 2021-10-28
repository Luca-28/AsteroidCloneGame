PImage Background;      //Sprites
PImage Spaceship_Small;
PImage Spaceship_Medium;
PImage Spaceship_Large;

PImage Attack_Small;
PImage Attack_Medium;
PImage Attack_Large;

float PlayerSize;

float PlayerX;  //Used under 'PlayerMovement' to figure out how the player moves
float PlayerY;
float PlayerSpeedX = 0;
float PlayerSpeedY = 0;
boolean PlayerRight = false;
boolean PlayerDown = false;
boolean PlayerLeft = false;
boolean PlayerUp = false;

float MouseAngle;
float PlayerAngle;

float AttackAngle;
boolean AttackActive = false;
float AttackX = -100;  //Defines the player attack
float AttackY = -100;;
float AttackSpeedX;
float AttackSpeedY;


void setup(){
  //noCursor();
  cursor(CROSS);
  fullScreen();
  PlayerX = width/2;
  PlayerY = height/2;
  
  frameRate(120);
  
  PlayerSize = 1;
  
  Background = loadImage("Background.png");
  Spaceship_Large = loadImage("Spaceship_Large.png");
  Spaceship_Medium = loadImage("Spaceship_Medium.png");
  Spaceship_Small = loadImage("Spaceship_Small.png");
  
  Attack_Large = loadImage("Attack_Large.png");
  Attack_Medium = loadImage("Attack_Medium.png");
  Attack_Small = loadImage("Attack_Small.png");
  
  rectMode(CENTER);
  imageMode(CENTER);
  println("Setup complete");
}

void draw(){  
  clear();
  image(Background,width/2,height/2);
  
  RotatePlayer();
  DrawPlayer();
  PlayerMovement();
  
  DrawAttack();
  
  AsteroidHitDetection();
  AsteroidMovement();
}

void keyPressed(){
  PlayerAccelerate();
  if(key == ' '){
    PlayerAttackAction();
  //AttackActive = true;
  }
}

void keyReleased(){
 PlayerMoveCheck();
}
