void PlayerMovement(){
  
  if(PlayerUp == true && PlayerSpeedY > -5){  //The player speeds up
    PlayerSpeedY -= (0.2);
  }
  if(PlayerDown == true && PlayerSpeedY < 5){
     PlayerSpeedY += (0.2);
  }
  
  if(PlayerLeft == true && PlayerSpeedX > -5){
    PlayerSpeedX -= (0.2);
  }
  if(PlayerRight == true && PlayerSpeedX < 5){
     PlayerSpeedX += (0.2);
  }
  
  PlayerX += PlayerSpeedX/PlayerSize; //The player moves according to their speed
  PlayerY += PlayerSpeedY/PlayerSize;
  
  PlayerDecelerate();
  
  if(PlayerX > width+30){    //The player loops around when reaching the edge
    PlayerX = -30;
  }
  if(PlayerX < -30){
    PlayerX = width+30;
  }
  if(PlayerY > height+30){
    PlayerY = -30;
  }
  if(PlayerY < -30){
    PlayerY = height+30;
  }
}

void PlayerAccelerate(){      //Makes the player when when the key is pressed
   if(key == 'w' || key == 'W'){
     PlayerUp = true;
     //println(" Key 'W' pressed");
   }
   if(key == 's' || key == 'S'){
     PlayerDown = true;
     //println(" Key 'S' pressed");
   }
   if(key == 'a' || key == 'A'){
     PlayerLeft = true;
     //println(" Key 'A' pressed");
   }
   if(key == 'd' || key == 'D'){
     PlayerRight = true;
     //println(" Key 'D' pressed");
   }
}



void PlayerDecelerate(){               //The player slows down over a short timeframe
   PlayerSpeedX *= 0.98;
   PlayerSpeedY *= 0.98;
}



void PlayerMoveCheck(){      //Makes the player stop moving after releasing the key
   if(key == 'w' || key == 'W'){
     PlayerUp = false;
     //println(" Key 'W' released");
   }
   if(key == 's' || key == 'S'){
     PlayerDown = false;
     //println(" Key 'S' released");
   }
   if(key == 'a' || key == 'A'){
     PlayerLeft = false;
     //println(" Key 'A' released");
   }
   if(key == 'd' || key == 'D'){
     PlayerRight = false;
     //println(" Key 'D' released");
   }
}
