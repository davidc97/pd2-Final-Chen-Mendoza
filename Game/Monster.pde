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
  }
  
  //calculates how much damage was done for each move
  int damageCalc(int base, int attack, int defense){
    return (int)(base * (.01) * (1.0 * attack / defense));
  }
  
  //performs the user's desired move
  //incomplete
  void performMove(String name, Monster attack, Monster defend){
    //incomplete
    if(name.equals("Scratch")){
    }
    
  }
  
  //this will import the sprites
  //incomplete
  void setupStates() {
  }

}
