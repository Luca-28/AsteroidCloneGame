void PlayerAttackAction(){
  if(AttackActive == false){  //Lets the player attack when their attack is ready
  AttackX = PlayerX + 50;
  AttackY = PlayerY + 50;
  
  AttackSpeedX = 2;
  AttackSpeedY = 2;
  }
  
}
