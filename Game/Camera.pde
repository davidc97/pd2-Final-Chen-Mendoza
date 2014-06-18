class Camera extends HCamera {
  Camera() {
    super();
  }

  void draw() {
    setPosition(player.getPosition().x - WINDOW_WIDTH /2, 
    player.getPosition().y - WINDOW_HEIGHT /2);
    super.draw();
  }
}
<<<<<<< HEAD

=======

>>>>>>> be1e265c5623fdb15988227e8c494b15d34e434d
