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
float OldAngle;
float PlayerAngle;

float AttackAngle;
boolean AttackActive = false;
float AttackX = -100;  //Defines the player attack
float AttackY = -100;;
float AttackSpeedX;
float AttackSpeedY;


void setup(){
  fullScreen();
  PlayerX = width/2;
  PlayerY = height/2;
  
  frameRate(120);
  
  PlayerSize = 3;
  
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
  MouseAngle = atan2(mouseY - PlayerY, mouseX - PlayerX)* 180/ PI;
  MouseAngle = radians(MouseAngle);
  
  //if(OldAngle < PI && OldAngle > 0){  //Enables smooth transition over the PI to -PI border
    
  }
  
  OldAngle = MouseAngle;
  clear();
  image(Background,width/2,height/2);
  
  pushMatrix();
  translate(AttackX,AttackY);
  rotate(AttackAngle+radians(90));
  image(Attack_Large,0,0); //Draws the attack
  popMatrix();
  
  AttackX += AttackSpeedX;
  AttackY += AttackSpeedY;
  
  
  if(MouseAngle-PlayerAngle < radians(5) && MouseAngle-PlayerAngle > radians(0)){
    //Don't rotate
  } else if(MouseAngle > PlayerAngle){  //Rotates the player smoothly
    PlayerAngle += radians(10)/PlayerSize;
  } else if(MouseAngle < PlayerAngle){
    PlayerAngle -= radians(10)/PlayerSize;
  }
  
  text(PlayerAngle,width/2,height/2);
  
  pushMatrix();
  translate(PlayerX,PlayerY);  //Rotates the player to follow the mouseposition
  rotate(PlayerAngle+radians(90));
  fill(200);
  image(Spaceship_Large,0,0);  //Draws the player
  popMatrix();
    PlayerMovement();
  
  
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
