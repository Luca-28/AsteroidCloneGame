PImage Background;      //Sprites


float PlayerX;  //Used under 'PlayerMovement' to figure out how the player moves
float PlayerY;
float PlayerSpeedX = 0;
float PlayerSpeedY = 0;
boolean PlayerRight = false;
boolean PlayerDown = false;
boolean PlayerLeft = false;
boolean PlayerUp = false;


void setup(){
  fullScreen();
  PlayerX = width/2;
  PlayerY = height/2;
  
  frameRate(100);
  
  Background = loadImage("Background.png");
  
  rectMode(CENTER);
  println("Setup complete");
}

void draw(){
  clear();
  image(Background,0,0);
  fill(200);
  rect(PlayerX,PlayerY,50/(width/1920),50/(height/1080));  //Draws the player and their "copies" for when crossing the edge of the screen
  
  /*
  fill(200);
  rect(PlayerX+width,PlayerY,50/(width/1920),50/(height/1080)); //Draws "clones" of the player to preview moving across screen edges - Currently not used due to a an issue caused by processing not drawing when y < 0
  rect(PlayerX-width,PlayerY,50/(width/1920),50/(height/1080));
  rect(PlayerX,PlayerY+height,50/(width/1920),50/(height/1080));
  rect(PlayerX,PlayerY-height,50/(width/1920),50/(height/1080));
  rect(PlayerX+width,PlayerY+height,50/(width/1920),50/(height/1080));
  rect(PlayerX+width,PlayerY-height,50/(width/1920),50/(height/1080));
  rect(PlayerX-width,PlayerY+height,50/(width/1920),50/(height/1080));
  rect(PlayerX-width,PlayerY-height,50/(width/1920),50/(height/1080));
  */
  
  PlayerMovement();
  PlayerAttack();
}

void keyPressed(){
  PlayerAccelerate();
}

void keyReleased(){
 PlayerMoveCheck();
}
