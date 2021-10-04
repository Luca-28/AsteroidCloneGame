void PlayerAttackAction(){
  if(AttackActive == false){  //Lets the player attack when their attack is ready
  AttackAngle = PlayerAngle;
  AttackX = PlayerX+20*cos(AttackAngle);
  AttackY = PlayerY+20*sin(AttackAngle);
  
  AttackSpeedX = 8/PlayerSize*cos(AttackAngle);
  AttackSpeedY = 8/PlayerSize*sin(AttackAngle);
  }
  
}
