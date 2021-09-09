void PlayerMovement(){
  
  if(PlayerUp == true && PlayerSpeedY > -5/(height/1080)){  //The player speeds up
    PlayerSpeedY -= (0.2/(height/1080))/(height/1080);
  }
  if(PlayerDown == true && PlayerSpeedY < 5/(height/1080)){
     PlayerSpeedY += (0.2/(height/1080))/(height/1080);
  }
  
  if(PlayerLeft == true && PlayerSpeedX > -5/(width/1920)){
    PlayerSpeedX -= (0.2/(width/1920))/(width/1920);
  }
  if(PlayerRight == true && PlayerSpeedX < 5/(width/1920)){
     PlayerSpeedX += (0.2/(width/1920))/(width/1920);
  }
  
  PlayerX = PlayerX + PlayerSpeedX; //The player moves according to their speed
  PlayerY = PlayerY + PlayerSpeedY;
  
  PlayerDecelerate();
  
  if(PlayerX > width+25/(width/1920)){    //The player loops around when reaching the edge
    PlayerX = -25/(width/1920);
  }
  if(PlayerX < -25/(width/1920)){
    PlayerX = width+25/(width/1920);
  }
  if(PlayerY > height+25/(height/1080)){
    PlayerY = -25/(height/1080);
  }
  if(PlayerY < -25/(height/1080)){
    PlayerY = height+25/(height/1080);
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
