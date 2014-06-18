//represents the platforms
//a massed being represents a body with mass and elasticity

class Platform extends MassedBeing {

  static final float HEIGHT = 40.0f; //height of platform
  final color COLOR = color(125,125,125); //color of platform
  
  float width; //width of platform
  
  //makes a platform
  
  Platform(PVector center, float width){
    super(new Rectangle(center, width, HEIGHT), HermesMath.zeroVector(), HermesMath.INFINITY, 1);
    
    this.width = width;
  }
  
  void draw(){
    fill(COLOR);
    rect(0,0,width,HEIGHT);
  }
}
<<<<<<< HEAD

=======

>>>>>>> be1e265c5623fdb15988227e8c494b15d34e434d
