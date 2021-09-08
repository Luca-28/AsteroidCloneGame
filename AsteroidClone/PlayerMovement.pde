void PlayerMovement(){
  
  if(PlayerUp == true && PlayerSpeedY > -5){  //The player speeds up
    PlayerSpeedY -= 0.2;
  }
  if(PlayerDown == true && PlayerSpeedY < 5){
     PlayerSpeedY += 0.2;
  }
  
  if(PlayerLeft == true && PlayerSpeedX > -5){
    PlayerSpeedX -= 0.2;
  }
  if(PlayerRight == true && PlayerSpeedX < 5){
     PlayerSpeedX += 0.2;
  }
  
  PlayerX = PlayerX + PlayerSpeedX; //The player moves according to their speed
  PlayerY = PlayerY + PlayerSpeedY;
  
  PlayerDecelerate();
  
  if(PlayerX > 1000){    //The player loops around when reaching the edge
    PlayerX = 0;
  }
  if(PlayerX < 0){
    PlayerX = 1000;
  }
  if(PlayerY > 1000){
    PlayerY = 0;
  }
  if(PlayerY < 0){
    PlayerY = 1000;
  }
}

void PlayerAccelerate(){      //Makes the player when when the key is pressed
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



void PlayerDecelerate(){               //The player slows down over a short timeframe
   PlayerSpeedX = PlayerSpeedX*0.98;
   PlayerSpeedY = PlayerSpeedY*0.98;
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
