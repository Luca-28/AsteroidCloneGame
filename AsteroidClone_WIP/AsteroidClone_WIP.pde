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
  frameRate(60);
  println("Setup run");
}

void draw(){
  clear();
  background(100,200,100);
  fill(200,100,100);
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
