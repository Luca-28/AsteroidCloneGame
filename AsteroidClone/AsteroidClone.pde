PImage Background;      //Sprites


float PlayerX = 500;  //Used under 'PlayerMovement' to figure out how the player moves
float PlayerY = 500;
float PlayerSpeedX = 0;
float PlayerSpeedY = 0;
boolean PlayerRight = false;
boolean PlayerDown = false;
boolean PlayerLeft = false;
boolean PlayerUp = false;


void setup(){
  size(1000,1000);
  frameRate(100);
  
  Background = loadImage("Background.png");
  
  
  rectMode(CENTER);
  println("Setup complete");
}

void draw(){
  clear();
  image(Background,0,0);
  fill(200);
  rect(PlayerX,PlayerY,50,50);  //Draws the player and their "copies" for when crossing the edge of the screen
  
  rect(PlayerX+1000,PlayerY,50,50);
  rect(PlayerX-1000,PlayerY,50,50);
  rect(PlayerX,PlayerY+1000,50,50);
  rect(PlayerX-1000,PlayerY,50,50);
  rect(PlayerX+1000,PlayerY+1000,50,50);
  rect(PlayerX-1000,PlayerY+1000,50,50);
  rect(PlayerX-1000,PlayerY+1000,50,50);
  rect(PlayerX-1000,PlayerY-1000,50,50);
  
  
  
  
  PlayerMovement();
  PlayerAttack();
}

void keyPressed(){
  PlayerAccelerate();
}

void keyReleased(){
 PlayerMoveCheck();
}
