void PlayerMovement(){
  
  if(PlayerUp == true && PlayerSpeedY > -5*Scale){  //The player speeds up
    PlayerSpeedY -= (0.2*Scale);
  }
  if(PlayerDown == true && PlayerSpeedY < 5*Scale){
     PlayerSpeedY += (0.2*Scale);
  }
  
  if(PlayerLeft == true && PlayerSpeedX > -5*Scale){
    PlayerSpeedX -= (0.2*Scale);
  }
  if(PlayerRight == true && PlayerSpeedX < 5*Scale){
     PlayerSpeedX += (0.2*Scale);
  }
  
  PlayerX += PlayerSpeedX; //The player moves according to their speed
  PlayerY += PlayerSpeedY;
  
  PlayerDecelerate();
  
  if(PlayerX > width+25*Scale){    //The player loops around when reaching the edge
    PlayerX = -25*Scale;
  }
  if(PlayerX < -25*Scale){
    PlayerX = width+25*Scale;
  }
  if(PlayerY > height+25*Scale){
    PlayerY = -25*Scale;
  }
  if(PlayerY < -25*Scale){
    PlayerY = height+25*Scale;
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
   PlayerSpeedX *= 0.98;
   PlayerSpeedY *= 0.98;
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
