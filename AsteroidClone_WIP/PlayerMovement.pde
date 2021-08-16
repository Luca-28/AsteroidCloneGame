void PlayerMovement(){
  
  if(PlayerUp == true){
    PlayerSpeedY = -10;
  }
  if(PlayerDown == true){
     PlayerSpeedY = 10;
  }
  if(PlayerUp == false && PlayerDown == false){
    PlayerSpeedY = 0;
  }
  
  if(PlayerLeft == true){
    PlayerSpeedX = -10;
  }
  if(PlayerRight == true){
     PlayerSpeedX = 10;
  }
  if(PlayerLeft == false && PlayerRight == false){
    PlayerSpeedX = 0;
  }
  
  PlayerX = PlayerX + PlayerSpeedX;
  PlayerY = PlayerY + PlayerSpeedY;
  
  PlayerDecelerate();
  
  if(PlayerX > 950){
    PlayerX = 0;
  }
  if(PlayerX < 0){
    PlayerX = 950;
  }
  if(PlayerY > 950){
    PlayerY = 0;
  }
  if(PlayerY < 0){
    PlayerY = 950;
  }
}

void PlayerAccelerate(){
   if(key == 'w'){
     PlayerUp = true;
     //println(" Key 'W' pressed");
   }
   if(key == 's'){
     PlayerDown = true;
     //println(" Key 'S' pressed");
   }
   if(key == 'a'){
     PlayerLeft = true;
     //println(" Key 'A' pressed");
   }
   if(key == 'd'){
     PlayerRight = true;
     //println(" Key 'D' pressed");
   }
}



void PlayerDecelerate(){               //Decelerates the player 
   PlayerSpeedX = PlayerSpeedX*0.95;
   PlayerSpeedY = PlayerSpeedY*0.95;
}



void PlayerMoveCheck(){      //Makes the player stop moving after releasing the key
   if(key == 'w'){
     PlayerUp = false;
     //println(" Key 'W' released");
   }
   if(key == 's'){
     PlayerDown = false;
     //println(" Key 'S' released");
   }
   if(key == 'a'){
     PlayerLeft = false;
     //println(" Key 'A' released");
   }
   if(key == 'd'){
     PlayerRight = false;
     //println(" Key 'D' released");
   }
}
