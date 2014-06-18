// Player class
// A Being is anything with size,shape, or location
class Player extends MassedBeing {
  //CONSTANTS
 
  final static float PLAYER_WIDTH = 16;
  final static float PLAYER_HEIGHT = 36;
  final static float PLAYER_SPEED = 150;
  final static int FACING_LEFT = 1;
  final static int FACING_RIGHT = 2;
  //direction the player is facing
  int direction = FACING_RIGHT; 
  //whether the player can jump
  //player can only jump once until it lands again
  boolean jumped = false;
  
  AnimatedSprite sprite;
  int animIndex;
  //temp
  color _c;
  
  Player(float x, float y) {
    //calls MassedBeing constructor
    super(new Rectangle(HermesMath.makeVector(x, y), PLAYER_WIDTH, PLAYER_HEIGHT), HermesMath.zeroVector(), 1.0f, 1.0f);
 
  }
  public void draw(){
    scale(0.2);
    imageMode(CENTER);
    fill(_c);
    noStroke();
    _shape.draw();
  }
  
  void resetJump() {
    jumped = false;
  }
  
  void update(){
    _c = pickColor();
  }
  //receives Key Inputs
  void receive(KeyMessage m) {
    int nKey = m.getKeyCode();
    if(m.isPressed()) {
      if(nKey == POCodes.Key.D || nKey == POCodes.Key.RIGHT) {
        direction = FACING_RIGHT;
      }
      if(nKey == POCodes.Key.A || nKey == POCodes.Key.LEFT) {
        direction = FACING_LEFT;
      }
    }
  }
  private color pickColor() {
    return color(int(random(256)), int(random(256)), int(random(256)));
  }
}

<<<<<<< HEAD
  
=======
  
>>>>>>> be1e265c5623fdb15988227e8c494b15d34e434d
