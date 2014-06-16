class Monster{
  float xcor;
  float ycor;
  int attack;
  int defense;
  int health = 0;
  int maxHealth;
  int level;
  int exp = 0; 
  int expValue;
  String name;
  //Monster's current state of being that directly affects health (poisoned, jinxed)
  String state;
  //Monster's current state of being that doesn't directly affect health (stunned, flexed, protected)
  String state2;
  int jinxcount;
  int flexcount;
  Move[] moves = new Move[3];
  
  // constructor
  Monster(float x, float y, int a, int d, int h, int l, int e, String n) {
    setupStates();
    xcor = x;
    ycor = y;
    attack = a;
    defense = d;
    maxHealth = 0;
    level = l;
    expValue = e;
    name = n;
    state = "normal";
    state2 = "normal";
  }
  
  //returns base attack of the monster
  int getAttack(){
    return attack;
  }
  
  //returns base defense of the monster
  int getDefense(){
    return defense;
  }
  
  //returns the max health of the monster
  int maxHealth(){
    return maxHealth;
  }
  
  //returns the monster's current health
  int health(){
    return health;
  }
  
  //removes health from the monster
  void loseHealth(int damage){
    health -= damage;
  }
  
  //restores health to monster
  void addHealth(int i){
    health += i;
    //makes sure the monster doesn't have more than its maximum health
    if(health > maxHealth){
      health = maxHealth;
    }
  }
  
  //puts the monster in a new state
  void setState(String state){
    state = this.state;
  }
  
  //puts the monster in a new state2
  void setState2(String state){
    state2 = this.state;
  }
  
  //performs the user's desired move
  void performMove(Move move, Monster attack, Monster defend){
    move.effect(attack, defend);
  }
  
  //this will import the sprites
  //incomplete
  void setupStates() {
  }

}
