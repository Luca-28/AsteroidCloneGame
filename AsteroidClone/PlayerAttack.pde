void PlayerAttackAction(){
  if(AttackActive == false){  //Lets the player attack when their attack is ready
  AttackAngle = PlayerAngle;
  AttackX = PlayerX+20*cos(AttackAngle);
  AttackY = PlayerY+20*sin(AttackAngle);
  
  AttackSpeedX = 8/PlayerSize*cos(AttackAngle);
  AttackSpeedY = 8/PlayerSize*sin(AttackAngle);
  }
  
}

void DrawAttack(){
  pushMatrix();
  translate(AttackX,AttackY);
  rotate(AttackAngle+radians(90));
   if(PlayerSize == 1){
    image(Attack_Small,0,0);
  } else if(PlayerSize == 2){
    image(Attack_Medium,0,0);
  } else if(PlayerSize == 3){
    image(Attack_Large,0,0);
  }
  popMatrix();
  
  AttackX += AttackSpeedX;  //Moves the attack
  AttackY += AttackSpeedY;
}
