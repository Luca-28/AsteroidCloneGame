PImage Background;      //Sprites


float PlayerX = 475;  //Used under 'PlayerMovement' to figure out how the player moves
float PlayerY = 475;
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
  println("Setup complete");
}

void draw(){
  clear();
  image(Background,0,0);
  fill(200);
  rect(PlayerX,PlayerY,50,50);
  PlayerMovement();
  PlayerAttack();
}

void keyPressed(){
  PlayerAccelerate();
}

void keyReleased(){
 PlayerMoveCheck();
}
