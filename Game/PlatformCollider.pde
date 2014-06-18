//Handles player-platform collision
class PlatformCollider extends GenericMassedCollider<Player, Platform>{
  
  PlatformCollider(float elasticity){
    super(elasticity);
  }
  
  //resets the player jump when he hits a platform
  void handle(Player player, Platform platform) {
    player.resetJump(); //reset jump
    super.handle(player, platform); //GenericMassedCollider does the rest of collision
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> be1e265c5623fdb15988227e8c494b15d34e434d
