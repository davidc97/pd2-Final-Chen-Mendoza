class Move{
  String name;
  int uses;
  
  Move(String n, int u){
    name = n;
    uses = u;
  }
  
  //calculates how much damage was done for each move
  int damageCalc(int base, int attack, int defense, String myState, String myState2, String theirState2){
    int damage = 0;
    damage = (int)(base * (.01) * (1.0 * attack / defense));
    //checks if the user is jinxed
    if(myState.equals("jinxed")){
      damage = damage * -1;
    }
    //checks if the user has flexed
    if(myState2.equals("flexed")){
      damage = damage * 2;
    }
    //checks if the opponent is protected
    if(theirState2.equals("protected")){
      damage = 0;
    }
    return damage;
  }
  
  void effect(Monster attack, Monster defend){
    int damage;
    //checks if the monster may still use this move
    if(uses == 0){
      return;
    }
    //Scratch has base attack of 30
    if(name.equals("Scratch")){
      damage = damageCalc(30, attack.getAttack(), defend.getDefense());
      defend.loseHealth(damage);
    }
    //Death Glare prevents the opponent from using a move for one turn
    if(name.equals("Death Glare")){
      defend.setState2("stunned");
    }
    //Regenerate restores up to 25% of the Monster's max health
    if(name.equals("Regenerate")){
      attack.addHealth((int)(.25 * attack.maxHealth()));
    }
    //Self Destruct has base attack of 150 and kills the user
    if(name.equals("Self Destruct")){
      damage = damageCalc(150, attack.getAttack(), defend.getDefense());
      defend.loseHealth(damage);
      attack.loseHealth(attack.health());
    }
    //Flex doubles the power of the user's next two moves, may not be compounded
    if(name.equals("Flex")){
      attack.setState2("flexed");
    }
    //Sludge Toss has base attack of 10 and poison's the enemy
    if(name.equals("Sludge Toss")){
      damage = damageCalc(10, attack.getAttack(), defend.getDefense());
      defend.loseHealth(damage);
      defend.setState("poisoned");
    }
    //Nullify sets the user's state back to normal
    if(name.equals("Nullify")){
      attack.setState("normal");
      attack.setState2("normal");
    }
    //Protect cancels the opponent's next move
    if(name.equals("Protect")){
      attack.setState2("protected");
    }
    //Iron Fist has base attack of 60
    if(name.equals("Iron Fist")){
      damage = damageCalc(60, attack.getAttack(), defend.getDefense());
      defend.loseHealth(damage);
    }
    //Jinx reverses the effects of moves 
    //moves that alter state2 from normal, set state2 to normal 
    //moves that set state2 to normal, set state2 to stunned
    //moves that do damage, restore health to opposing monster
    //moves that restore health, do damage to the user
    //being jinxed lasts for 3 turns
    if(name.equals("Jinx")){
      defend.setState2("jinxed");
    }
  }
}
    
      
  
