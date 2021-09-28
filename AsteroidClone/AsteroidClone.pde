PImage Background;      //Sprites


float PlayerX;  //Used under 'PlayerMovement' to figure out how the player moves
float PlayerY;
float PlayerSpeedX = 0;
float PlayerSpeedY = 0;
boolean PlayerRight = false;
boolean PlayerDown = false;
boolean PlayerLeft = false;
boolean PlayerUp = false;
  
boolean AttackActive = false;
float AttackX;  //Defines the position of the player attack
float AttackY;
float AttackSpeedX;
float AttackSpeedY;

int Scale = 1;  //Sets the scale to be consistent across all resolutions.

void setup(){
  fullScreen();
  Scale = width/1920; //Sets the scale for the game
  PlayerX = width/2;
  PlayerY = height/2;
  
  frameRate(100);
  
  Background = loadImage("Background.png");
  println("Background image loaded");
  
  rectMode(CENTER);
  println("Setup complete");
}

void draw(){
  float PlayerAngle = atan2(mouseY - PlayerY, mouseX - PlayerX)* 180/ PI;
  println("Angle = " + PlayerAngle);
  clear();
  image(Background,0,0);
  fill(200);
  rect(PlayerX,PlayerY,50*Scale,50*Scale);  //Draws the player and their "copies" for when crossing the edge of the screen
  
  /*
  fill(200);
  rect(PlayerX+width,PlayerY,50*Scale,50*Scale); //Draws "clones" of the player to preview moving across screen edges - Currently not used due to a an issue caused by processing not drawing when y < 0
  rect(PlayerX-width,PlayerY,50*Scale,50*Scale);
  rect(PlayerX,PlayerY+height,50*Scale,50*Scale);
  rect(PlayerX,PlayerY-height,50*Scale,50*Scale);
  rect(PlayerX+width,PlayerY+height,50*Scale,50*Scale);
  rect(PlayerX+width,PlayerY-height,50*Scale,50*Scale);
  rect(PlayerX-width,PlayerY+height,50*Scale,50*Scale);
  rect(PlayerX-width,PlayerY-height,50*Scale,50*Scale);
  */
  
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
